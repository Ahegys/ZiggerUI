//modified by Ahegys
const std = @import("std");
const create = @import("./config/init_lib.zig");

fn setup() void {
    std.debug.print("Hello from setup\n", .{});
}

fn render() void {
    std.debug.print("Hello from render\n", .{});
}

pub fn main() !void {
    // Inicializar o SDL
    try create.init.init_display(320, 240, "window");
}
