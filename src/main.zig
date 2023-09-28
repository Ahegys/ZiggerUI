const Setup = @import("./config/AbsLib.zig").Setup;
const std = @import("std");
const Vector = @import("./Vectors/Vectors.zig");

pub const sdl = @cImport({
    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL_image.h");
});

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
    var i: i32 = 0;
    while (i < 50) {
        var j: i32 = 0;
        while (j < 50) {
            Setup.Pixel(i, j, color);
            j += 1;
        }
        i += 1;
    }

    Setup.Loop();

    Setup.Delay(3000);
}
