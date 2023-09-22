//modified by Ahegys
const std = @import("std");
const c = @cImport(@cInclude("SDL2/SDL.h"));

pub fn main() !void {
    // Inicializar o SDL
    if (c.SDL_Init(c.SDL_INIT_VIDEO) < 0) {
        const sdlError = c.SDL_GetError();
        std.debug.print("Erro ao inicializar o SDL: {s}\n", .{sdlError});
        return error.InitFailed;
    }

    defer c.SDL_Quit();

    const width = 800;
    const height = 600;
    const window = c.SDL_CreateWindow("Minha Janela SDL", c.SDL_WINDOWPOS_UNDEFINED, c.SDL_WINDOWPOS_UNDEFINED, width, height, c.SDL_WINDOW_SHOWN);
    if (window == null) {
        const sdlError = c.SDL_GetError();
        std.debug.print("Erro ao criar a janela: {s}\n", .{sdlError});
        return error.InitFailed;
    }

    // Aguardar por um evento de saída
    var sair: bool = false;
    var evento: c.SDL_Event = undefined;

    while (!sair) {
        while (c.SDL_PollEvent(&evento) != 0) {
            if (evento.type == c.SDL_QUIT) {
                sair = true;
            }
        }
    }

    // Destruir a janela e finalizar o SDL
    c.SDL_DestroyWindow(window);
}
