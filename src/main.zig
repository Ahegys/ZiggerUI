//modified by Ahegys
const std = @import("std");
const start = @import("./config/init_lib.zig");
pub fn main() !void {
    // Inicializar o SDL
    try start.init.init_display(320, 240, "window");
}
