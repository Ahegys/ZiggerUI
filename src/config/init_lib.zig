const std = @import("std");
const props = @import("../layers/layer.zig");
const set = @import("../config/pixel.zig");

pub var ctx: c_uint = props.OPENGL;

pub const init = struct {
    pub fn display(width: i16, height: i16, comptime title: [*c]const u8) !void {
        try props.StartDisplay();
        try props.StartWindow(width, height, title, ctx);
        try props.render();
    }

    pub fn LoopHook(render: *const fn (?*props.c.SDL_Renderer) void, setup: *const fn () void) !void {
        var exit: bool = false;
        var event: props.Event = undefined;

        while (!exit) {
            while (props.PollEvent(&event) != 0) {
                if (event.type == props.Quit) {
                    exit = true;
                }
            }
            setup();
            render(props.setRender);
        }
        props.Loop(props.setRender);
        props.Destroy(props.window);
    }

    pub fn Background(renderer: ?*props.c.SDL_Renderer, color: set.Color) void {
        _ = props.DrawColor(renderer, color.r, color.g, color.b, color.a);
        try ClearRender(renderer);
    }
    pub fn setLoop(win: ?*props.c.SDL_Renderer) !void {
        props.Loop(win);
    }

    pub fn ClearRender(win: ?*props.c.SDL_Renderer) !void {
        _ = props.ClearRender(win);
    }
};
