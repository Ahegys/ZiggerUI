//modified by Ahegys
const std = @import("std");
const create = @import("./config/init_lib.zig");
const set = @import("./config/pixel.zig");
const c = @cImport(@cInclude("SDL2/SDL.h"));
const tes = @import("./layers/layer.zig");
const Img = @import("./layers/imageLoader.zig").Img;
fn render(win: ?*c.SDL_Renderer) void {
    var backColor = set.Color{
        .r = 0,
        .g = 0,
        .b = 0,
        .a = 255,
    };
    create.init.Background(win, backColor);
    Img.path = "../screenshots/dog.png";
    try Img.Load(win);
    Img.Config(null, null);
    Img.Destroy();
    try create.init.setLoop(win);
    try create.init.ClearRender(win);
}

fn setup() void {}

pub fn main() !void {
    try create.init.display(320, 240, "window");
    try create.init.LoopHook(render, setup);
}
