const Setup = @import("./config/AbsLib.zig").Setup;
const std = @import("std");

pub fn main() !void {
    
    const back = Setup.Color{
        .r = 0,
        .g = 0,
        .b = 0,
        .a = 255,
    };
    const color = Setup.Color{
        .r = 0,
        .g = 0,
        .b = 255,
        .a = 255,
    };
    try Setup.InitDisplay();
    try Setup.Display(320, 280, "Hello Window");
    Setup.Backgroud(back);
    Setup.Pixel(40, 50, color);

    Setup.Loop();

    Setup.Delay(3000);
        
}
