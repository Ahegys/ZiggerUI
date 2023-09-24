pub const c = @cImport(@cInclude("SDL2/SDL.h"));
pub const print = @import("std").debug.print;

pub const CENTERED = c.STD_WINDOWPOS_CENTERED;
pub const UNDEFINED = c.SDL_WINDOWPOS_UNDEFINED;

// graphic engines
pub const OPENGL = c.SDL_WINDOW_OPENGL;
pub const VULKAN = c.SDL_WINDOW_VULKAN;
pub const METAL = c.SDL_WINDOW_METAL;
// screen setups
pub const FULLSCREEN = c.SDL_WINDOW_FULLSCREEN;
pub const FULLSCREEN_DESKTOP = c.SDL_WINDOW_FULLSCREEN_DESKTOP;
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
pub var window: ?*c.SDL_Window = null;
pub const setWindow = c.SDL_CreateWindow;
pub const DrawPoint = c.SDL_RenderDrawPoint;
pub const DrawColor = c.SDL_SetRenderDrawColor;
pub const setRenderer = c.SDL_CreateRenderer;
pub const ClearRender = c.SDL_RenderClear;
pub const Event = c.SDL_Event;
pub const PollEvent = c.SDL_PollEvent;
pub const Quit = c.SDL_QUIT;
pub const Start = c.SDL_Init;
pub const StartVideo = c.SDL_INIT_VIDEO;
pub const GetError = c.SDL_GetError;
pub const Destroy = c.SDL_DestroyWindow;
pub const defQuit = c.SDL_Quit;
pub const RENDERER_ACCELERATED = c.SDL_RENDERER_ACCELERATED;
pub const Loop = c.SDL_RenderPresent;
pub const setWinX: c_int = UNDEFINED;
pub const setWinY: c_int = UNDEFINED;
pub var setRender: ?*c.SDL_Renderer = null;

pub fn StartDisplay() !void {
    if (Start(StartVideo) < 0) {
        print("Error starting SDL: {s}\n", .{GetError()});
        return error.InitFailed;
    }
    defer defQuit();
}

pub fn StartWindow(width: i16, height: i16, comptime title: [*c]const u8, context: c_uint) !void {
    window = setWindow(title, setWinX, setWinY, width, height, context);
    if (window == null) {
        print("Error starting window: {s}\n", .{ZiggError()});
        return error.InitFailed;
    }
}

pub fn render() !void {
    setRender = setRenderer(window, -1, RENDERER_ACCELERATED);
    if (setRender == null) {
        print("Error to set renderer: {s}\n", .{ZiggError()});
    }
}
