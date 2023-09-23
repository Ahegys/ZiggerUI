//modified by Ahegys
const std = @import("std");
const create = @import("./config/init_lib.zig");

fn render() void {
    std.debug.print("Hello World from {s} ", .{"render"});
}

fn setup() void {
    std.debug.print("Hello World from {s} ", .{"setup"});
}

pub fn main() !void {
    try create.init.init_display(320, 240, "window", render, setup);
}
