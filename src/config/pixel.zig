const get = @import("../config/init_lib.zig");
const print = @import("std").debug.print;
const props = @import("../layers/layer.zig");

pub const Color = struct {
    r: u8,
    g: u8,
    b: u8,
    a: u8,
};

pub fn pixel(renderer: ?*props.c.SDL_Renderer, x: i32, y: i32, color: Color) void {
    const result = props.DrawColor(renderer, color.r, color.g, color.b, color.a);
    if (result != 0) {
        print("Could not draw on the screen: {s}\n", .{props.ZiggError()});
    }
    const res = props.DrawPoint(renderer, x, y);
    if (res != 0) {
        print("Could not draw on the screen: {s}\n", .{props.ZiggError()});
    }
}
