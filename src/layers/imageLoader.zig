const zigger = @import("./layer.zig");

const ziggerIMG = @cImport(@cInclude("SDL2/SDL_image.h"));
pub const Img = struct {
    pub var path: *const [22:0]u8 = undefined;
    const texture: ?*zigger.c.SDL_Texture = null;
    var renderer: ?*zigger.c.SDL_Renderer = null;

    pub fn Load(render: ?*zigger.c.SDL_Renderer) !void {
        const img: [*c]ziggerIMG.SDL_Surface = ziggerIMG.IMG_Load(path);
        renderer = render;
        if (img == null) {
            zigger.print("Error unable to load image: {s}\n", ziggerIMG.IMG_GetError());
            return error.InitFailed;
        }

        texture = zigger.c.SDL_CreateTextureFromSurface(renderer, @as([*c]ziggerIMG.SDL_Surface, img));
        _ = zigger.c.SDL_FreeSurface(img);
        if (texture == null) {
            zigger.print("Error unable to load texture: {s}\n", ziggerIMG.IMG_GetError());
            return error.InitFailed;
        }
        zigger.ClearRender(renderer);
    }

    pub fn Config(src: ?*zigger.c.SDL_Rect, dst: ?*zigger.c.SDL_Rect) !void {
        _ = zigger.c.SDL_RenderCopy(renderer, texture, src, dst);
    }

    pub fn Destroy() void {
        _ = zigger.c.SDL_DestroyTexture(texture);
    }
};
