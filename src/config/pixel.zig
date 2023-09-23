const c = @cImport(@cInclude("SDL2/SDL.h"));
const get = @import("../config/init_lib.zig");
const print = @import("std").debug.print;
pub const Color = struct {
    r: u8,
    g: u8,
    b: u8,
    a: u8,
};

pub fn pixel(setRender: ?*c.SDL_Renderer, x: i32, y: i32, color: Color) void {
    const result = c.SDL_SetRenderDrawColor(setRender, color.r, color.g, color.b, color.a);
    if (result < 0) {
        print("Error to set color: {s}\n", .{get.ZiggError()});
    }
    var res = c.SDL_RenderDrawPoint(setRender, x, y);
    if (res < 0) {
        print("Error to set color: {s}\n", .{get.ZiggError()});
    }

    // Atualizar a janela
    c.SDL_RenderPresent(setRender);
}
