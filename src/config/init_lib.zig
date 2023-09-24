const std = @import("std");
const props = @import("../layers/layer.zig");

pub var ctx: c_uint = props.OPENGL;

pub const init = struct {
    pub fn display(width: i16, height: i16, comptime title: [*c]const u8, render: *const fn (?*props.c.SDL_Renderer) void, setup: *const fn () void) !void {
        const print = std.debug.print;

        try props.StartDisplay();
        try props.StartWindow(width, height, title, ctx);
        try props.render();

        var exit: bool = false;
        var event: props.Event = undefined;

        while (!exit) {
            while (props.PollEvent(&event) != 0) {
                if (event.type == props.Quit) {
                    exit = true;
                }
            }
            setup();
            const result = props.DrawColor(props.setRender, 0, 0, 0, 255);
            if (result < 0) {
                print("Error to set renderer: {s}\n", .{props.ZiggError()});
            }
            try ClearRender(props.setRender);
            render(props.setRender);
        }
        props.Destroy(props.window);
    }

    pub fn ClearRender(win: ?*props.c.SDL_Renderer) !void {
        _ = props.ClearRender(win);
    }
};
