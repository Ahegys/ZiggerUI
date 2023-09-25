const Setup = @import("./config/AbsLib.zig").Setup;
const std = @import("std");
const Vector = @import("./Vectors/Vectors.zig");

   pub const sdl = @cImport({
    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL_image.h");
});

fn CubeRotate(color: Setup.Color) void {
    const back = Setup.Color{
        .r = 0,
        .g = 0,
        .b = 0,
        .a = 255,
    };

    _ = color;

    const SPEED_X: f32 = 0.05; // rps
    const SPEED_Y: f32 = 0.15; // rps
    const SPEED_Z: f32 = 0.10; // rps

 const cubeVertices = [8]Vector.V {
    Vector.createVector(-1, -1, -1),
    Vector.createVector(1, -1, -1),
    Vector.createVector(1, 1, -1),
    Vector.createVector(-1, 1, -1),
    Vector.createVector(-1, -1, 1),
    Vector.createVector(1, -1, 1),
    Vector.createVector(1, 1, 1),
    Vector.createVector(-1, 1, 1)
};

const cubeEdges = [_][2]i8 {
    [_]i8{0, 1}, [_]i8{1, 2}, [_]i8{2, 3}, [_]i8{3, 0}, // arestas da face de trás
    [_]i8{4, 5}, [_]i8{5, 6}, [_]i8{6, 7}, [_]i8{7, 4}, // arestas da face da frente
    [_]i8{0, 4}, [_]i8{1, 5}, [_]i8{2, 6}, [_]i8{3, 7}, // arestas conectando os lados
};


    var timeDelta: u64 = 0;
    var timeLast: u64 = 0;

    var cubeRotation: Vector.V = .{ .x = 0, .y = 0, .z = 0 };

    while (true) {
        const timeNow = sdl.SDL_GetTicks();
        timeDelta = timeNow - timeLast;
        timeLast = timeNow;

        Setup.Backgroud(back);
        cubeRotation.x += @as(f32, timeDelta) * SPEED_X * 6.28318531 / 1000.0;
        cubeRotation.y += @as(f32, timeDelta) * SPEED_Y * 6.28318531 / 1000.0;
        cubeRotation.z += @as(f32, timeDelta) * SPEED_Z * 6.28318531 / 1000.0;

        for (cubeVertices) |vertex| {
            const x: f32 = @as(f32, vertex.x);
            const y: f32 = @as(f32, vertex.y);
            const z: f32 = @as(f32, vertex.z);

            // Rotação em torno do eixo Z
            const x1: f32 = x * @cos(cubeRotation.z) - y * @sin(cubeRotation.z);
            const y1: f32 = x * @sin(cubeRotation.z) + y * @cos(cubeRotation.z);

            // Rotação em torno do eixo X
            const y2: f32 = y1 * @cos(cubeRotation.x) - z * @sin(cubeRotation.x);
            const z2: f32 = y1 * @sin(cubeRotation.x) + z * @cos(cubeRotation.x);

            // Rotação em torno do eixo Y
            const x3: f32 = z2 * @sin(cubeRotation.y) + x1 * @cos(cubeRotation.y);
            const z3: f32 = z2 * @cos(cubeRotation.y) - x1 * @sin(cubeRotation.y);

            vertex.x = i32(x3);
            vertex.y = i32(y2);
            vertex.z = i32(z3);
        }

        for (cubeEdges) |edge| {
            const startVertex = cubeVertices[edge[0]];
            const endVertex = cubeVertices[edge[1]];
            Setup.LineTo(startVertex.x, startVertex.y, endVertex.x, endVertex.y);
        }
    }
}


pub fn main() !void {
    
    const back = Setup.Color{
        .r = 0,
        .g = 0,
        .b = 0,
        .a = 255,
    };
    const color = Setup.Color{
        .r = 0,
        .g = 0,
        .b = 255,
        .a = 255,
    };
    try Setup.InitDisplay();
    try Setup.Display(320, 280, "Hello Window");
    Setup.Backgroud(back);
    CubeRotate(color);

    Setup.Loop();

    Setup.Delay(3000);
        
}
