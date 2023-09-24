//modified by Ahegys
const std = @import("std");
const create = @import("./config/init_lib.zig");
const set = @import("./config/pixel.zig");
const c = @cImport(@cInclude("SDL2/SDL.h"));
const tes = @import("./layers/layer.zig");
fn render(win: ?*c.SDL_Renderer) void {
    var color = set.Color{
        .r = 255,
        .g = 255,
        .b = 255,
        .a = 255,
    };
    var i: i32 = 0;
    while (i < 40) {
        var j: i32 = 0;
        while (j < 40) {
            set.pixel(win, 50 + i, 50 + j, color);
            j += 1;
        }
        i += 1;
    }
    tes.Loop(win);
    try create.init.ClearRender(win);
}

fn setup() void {}

pub fn main() !void {
    try create.init.display(320, 240, "window");
    try create.init.LoopHook(render, setup);
}
