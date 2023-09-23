const c = @cImport(@cInclude("SDL2/SDL.h"));
const std = @import("std");

pub const CENTERED = c.STD_WINDOWPOS_CENTERED;
pub const UNDEFINED = c.SDL_WINDOWPOS_UNDEFINED;

pub const FULLSCREEN = c.SDL_WINDOW_FULLSCREEN;
pub const FULLSCREEN_DESKTOP = c.SDL_WINDOW_FULLSCREEN_DESKTOP;
pub const OPENGL = c.SDL_WINDOW_OPENGL;
pub const VULKAN = c.SDL_WINDOW_VULKAN;
pub const METAL = c.SDL_WINDOW_METAL;
pub const HIDDEN = c.SDL_WINDOW_HIDDEN;
pub const BORDERLESS = c.SDL_WINDOW_BORDERLESS;
pub const RESIZABLE = c.SDL_WINDOW_RESIZABLE;
pub const MINIMIZED = c.SDL_WINDOW_MINIMIZED;
pub const MAXIMIZED = c.SDL_WINDOW_MAXIMIZED;
pub const GRABBED = c.SDL_WINDOW_INPUT_GRABBED;
pub const HIGHDPI = c.SDL_WINDOW_ALLOW_HIGHDPI;
pub const DEFAULT = c.SDL_WINDOW_SHOWN;
pub const ZiggError = c.SDL_GetError;
pub var ctx: c_uint = DEFAULT;

pub const init = struct {
    pub const setWinX: c_int = UNDEFINED;
    pub const setWinY: c_int = UNDEFINED;

    pub fn init_display(width: i16, height: i16, comptime title: [*c]const u8) !void {
        const print = std.debug.print;

        if (c.SDL_Init(c.SDL_INIT_VIDEO) < 0) {
            const sdlError = c.SDL_GetError();
            print("Error starting SDL: {s}\n", .{sdlError});
            return error.InitFailed;
        }
        defer c.SDL_Quit();

        const window = c.SDL_CreateWindow(title, setWinX, setWinY, width, height, ctx);
        if (window == null) {
            print("Error starting window: {s}\n", .{ZiggError()});
            return error.InitFailed;
        }
        var exit: bool = false;
        var event: c.SDL_Event = undefined;

        while (!exit) {
            while (c.SDL_PollEvent(&event) != 0) {
                if (event.type == c.SDL_QUIT) {
                    exit = true;
                }
            }
        }

        c.SDL_DestroyWindow(window);
    }
};
