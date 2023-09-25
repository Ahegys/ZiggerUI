

const print = @import("std").debug.print;
pub const Setup = struct {
   pub const sdl = @cImport({
    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL_image.h");
});
    pub const Color = struct {
        r: u8,
        g: u8,
        b: u8,
        a: u8,
    };
    var window: ?*sdl.SDL_Window = undefined;
    pub var renderer: ?*sdl.SDL_Renderer = undefined;

    pub fn InitDisplay() !void {
        if (sdl.SDL_Init(sdl.SDL_INIT_VIDEO) < 0) {
            print("Error starting SDL: {s}\n", .{sdl.SDL_GetError()});
            return error.InitFailed;
        }
        defer sdl.SDL_Quit();
    }

    pub fn Display(width: i16, height: i16, comptime title: [*c]const u8) !void {
        window = sdl.SDL_CreateWindow(title, 0, 0, width, height, 0);
        if (window == null) {
            print("Error starting window: {s}\n", .{sdl.SDL_GetError()});
            return error.InitFailed;
        }

        renderer = sdl.SDL_CreateRenderer(window, -1, 0);
        if (renderer == null) {
            print("Error starting window: {s}\n", .{sdl.SDL_GetError()});
            return error.InitFailed;
        }
    }

    pub fn Backgroud(color: Color) void {
        _ = sdl.SDL_SetRenderDrawColor(renderer, color.r, color.g, color.b, color.a);
        _ = sdl.SDL_RenderClear(renderer);
    }

    pub fn Pixel(x: i32, y: i32, color: Color) void {
        _ = sdl.SDL_SetRenderDrawColor(renderer, color.r, color.g, color.b, color.a);
        _ = sdl.SDL_RenderDrawPoint(renderer, x, y);
    }
     pub fn LineTo(x: i32, y: i32, start: i32, end: i32, color: Color) void {
        _ = sdl.SDL_SetRenderDrawColor(renderer, color.r, color.g, color.b, color.a);
        _ = sdl.SDL_RenderDrawLine(renderer, x, y, start, end);
    }
    pub fn Delay(time: u32) void {
        sdl.SDL_Delay(time);
    }

    pub fn Loop() void {
        sdl.SDL_RenderPresent(renderer);
        _ = sdl.SDL_RenderClear(renderer);
    }

    pub fn Img(path: [*c]const u8, src: ?*sdl.SDL_Rect, dst: ?*sdl.SDL_Rect)  !?*sdl.SDL_Texture {
        _ = sdl.IMG_Init(sdl.IMG_INIT_PNG);
        const imgPtr = sdl.IMG_Load(path);
        if (imgPtr == null) {
            print("Error unable to load image in path: {s}\n[ {s} ]", .{path, sdl.IMG_GetError()});
            return error.IMG_GetError;
        }
        const texture = sdl.SDL_CreateTextureFromSurface(renderer, imgPtr);
        _ = sdl.SDL_FreeSurface(imgPtr);
        if (texture == null) {
            print("Error unable to load texture in path: {s}\n ]", .{sdl.IMG_GetError()});
             return error.IMG_GetError;
        }
        _ = sdl.SDL_RenderCopy(renderer, texture, src, dst);
        return texture;
    }

    pub fn LoadTexture(img: [*c]sdl.SDL_Surface) !?*sdl.SDL_Texture {
        _ = img;
        
    }

    pub fn ConfigTexture(texture: ?*sdl.SDL_Texture, src: ?*sdl.SDL_Rect, dst: ?*sdl.SDL_Rect) void {
        _ = dst;
        _ = src;
        _ = texture;
        
    }
    
    pub fn DestroyImg(texture: ?*sdl.SDL_Texture) !void {
        if (texture == null) {
            return error.InitFailed;
        }
        _ = sdl.SDL_DestroyTexture(texture);
    }
};
