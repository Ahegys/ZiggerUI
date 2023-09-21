const std = @import("std").debug.print;
const _ = @cImport("../trimSDL/include/SDL2/SDL.h");
pub fn main() !void {
    std("Hello World");
}
