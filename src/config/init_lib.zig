const std = @import("std");
const props = @import("../layers/layer.zig");

pub var ctx: c_uint = props.DEFAULT;
pub var window: ?*props.c.SDL_Window = null;

pub const init = struct {
    pub const setWinX: c_int = props.UNDEFINED;
    pub const setWinY: c_int = props.UNDEFINED;

    pub fn display(width: i16, height: i16, comptime title: [*c]const u8, render: *const fn (?*props.c.SDL_Renderer) void, setup: *const fn () void) !void {
        const print = std.debug.print;

        if (props.Start(props.StartVideo) < 0) {
            const sdlError = props.c.SDL_GetError();
            print("Error starting SDL: {s}\n", .{sdlError});
            return error.InitFailed;
        }
        defer props.defQuit();
        window = props.setWindow(title, setWinX, setWinY, width, height, ctx);
        if (window == null) {
            print("Error starting window: {s}\n", .{props.ZiggError()});
            return error.InitFailed;
        }
        const setRender = props.setRenderer(window, -1, props.RENDERER_ACCELERATED);
        if (setRender == null) {
            print("Error to set renderer: {s}\n", .{props.ZiggError()});
        }
        var exit: bool = false;
        var event: props.Event = undefined;

        while (!exit) {
            while (props.PollEvent(&event) != 0) {
                if (event.type == props.Quit) {
                    exit = true;
                }
            }
            setup();
            const result = props.DrawColor(setRender, 0, 0, 0, 255);
            if (result < 0) {
                print("Error to set renderer: {s}\n", .{props.ZiggError()});
            }
            _ = props.ClearRender(setRender);

            render(setRender);
        }
        props.Destroy(window);
    }
};
