const sdl = @cImport({
    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL_image.h");
});

const print = @import("std").debug.print;
pub const Setup = struct {
    pub const Color = struct {
        r: u8,
        g: u8,
        b: u8,
        a: u8,
    };
    var window: ?*sdl.SDL_Window = undefined;
    pub var renderer: ?*sdl.SDL_Renderer = undefined;

    pub fn InitDisplay() !void {
        if (sdl.SDL_Init(sdl.SDL_INIT_VIDEO) < 0) {
            print("Error starting SDL: {s}\n", .{sdl.SDL_GetError()});
            return error.InitFailed;
        }
        defer sdl.SDL_Quit();
    }

    pub fn Display(width: i16, height: i16, comptime title: [*c]const u8) !void {
        window = sdl.SDL_CreateWindow(title, 0, 0, width, height, 0);
        if (window == null) {
            print("Error starting window: {s}\n", .{sdl.SDL_GetError()});
            return error.InitFailed;
        }

        renderer = sdl.SDL_CreateRenderer(window, -1, 0);
        if (renderer == null) {
            print("Error starting window: {s}\n", .{sdl.SDL_GetError()});
            return error.InitFailed;
        }
    }

    pub fn Backgroud(color: Color) void {
        _ = sdl.SDL_SetRenderDrawColor(renderer, color.r, color.g, color.b, color.a);
        _ = sdl.SDL_RenderClear(renderer);
    }

    pub fn Pixel(x: i32, y: i32, color: Color) void {
        _ = sdl.SDL_SetRenderDrawColor(renderer, color.r, color.g, color.b, color.a);
        _ = sdl.SDL_RenderDrawPoint(renderer, x, y);
    }
    pub fn Delay(time: u32) void {
        sdl.SDL_Delay(time);
    }

    pub fn Loop() void {
        sdl.SDL_RenderPresent(renderer);
        _ = sdl.SDL_RenderClear(renderer);
    }
};
