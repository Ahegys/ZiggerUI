const std = @import("std");
const props = @import("../layers/layer.zig");

pub var ctx: c_uint = props.DEFAULT;
pub var window: ?*props.c.SDL_Window = null;

pub const init = struct {
    pub const setWinX: c_int = props.UNDEFINED;
    pub const setWinY: c_int = props.UNDEFINED;

    pub fn display(width: i16, height: i16, comptime title: [*c]const u8, render: *const fn (?*props.c.SDL_Renderer) void, setup: *const fn () void) !void {
        const print = std.debug.print;

        if (props.c.SDL_Init(props.c.SDL_INIT_VIDEO) < 0) {
            const sdlError = props.c.SDL_GetError();
            print("Error starting SDL: {s}\n", .{sdlError});
            return error.InitFailed;
        }
        defer props.c.SDL_Quit();
        window = props.c.SDL_CreateWindow(title, setWinX, setWinY, width, height, ctx);
        if (window == null) {
            print("Error starting window: {s}\n", .{props.ZiggError()});
            return error.InitFailed;
        }
        const setRender = props.c.SDL_CreateRenderer(window, -1, props.c.SDL_RENDERER_ACCELERATED);
        if (setRender == null) {
            print("Error to set renderer: {s}\n", .{props.ZiggError()});
        }
        const result = props.c.SDL_SetRenderDrawColor(setRender, 0, 0, 0, 255); // Cor preta (R, G, B, A)
        if (result < 0) {
            print("Error to set renderer: {s}\n", .{props.ZiggError()});
        }
        const err = props.c.SDL_RenderClear(setRender);
        if (err < 0) {
            print("Error to set renderer: {s}\n", .{props.ZiggError()});
        }
        setup();
        render(setRender);
        var exit: bool = false;
        var event: props.c.SDL_Event = undefined;

        while (!exit) {
            while (props.c.SDL_PollEvent(&event) != 0) {
                if (event.type == props.c.SDL_QUIT) {
                    exit = true;
                }
            }
        }

        props.c.SDL_DestroyWindow(window);
    }
};
