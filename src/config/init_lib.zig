const c = @cImport(@cInclude("SDL2/SDL.h"));
const print = @import("std").debug.print;
const comp = @import("../string_utis/equals.zig").comp;

pub const init = struct {
    var stateWin = "undefined";
    pub fn setWindState(comptime state: ?[]const u8) i32 {
        var setState: i32 = 0;

        if (comp(state, "undefined")) {
            setState = c.SDL_WINDOWPOS_UNDEFINED;
        } else if (comp(state, "centered")) {
            setState = c.SDL_WINDOWPOS_CENTERED;
        }
        return (setState);
    }

    pub fn init_display(width: i16, height: i16, comptime title: ?[]const u8) void {
        const window = undefined;

        if (c.SDL_Init(c.SDL_INIT_VIDEO) < 0) {
            const sdlError = c.SDL_GetError();
            print("Error starting Zigger: {s}\n", .{sdlError});
            return error.InitFailed;
        }
        defer c.SDL_Quit();

        window = c.SDL_CreateWindow(title, setWindState(), setWindState(), width, height, c.SDL_WINDOW_SHOWN);
        if (window == null) {
            const sdlError = c.SDL_GetError();
            print("Error starting window: {s}\n", .{sdlError});
            return error.InitFailed;
        }
    }
};
