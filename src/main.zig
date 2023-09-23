//modified by Ahegys
const std = @import("std");
const create = @import("./config/init_lib.zig");
const set = @import("./config/pixel.zig");
const c = @cImport(@cInclude("SDL2/SDL.h"));

fn render(win: ?*c.SDL_Renderer) void {
    const color = set.Color{
        .r = 255,
        .g = 122,
        .b = 30,
        .a = 255,
    };
    var i: i32 = 0;
    while (i < 50) {
        var j: i32 = 0;
        while (j < 50) {
            set.pixel(win, i, j, color);
            j += 1;
        }
        i += 1;
    }
}

fn setup() void {}

pub fn main() !void {
    try create.init.display(320, 240, "window", render, setup);
}
