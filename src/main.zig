//modified by Ahegys
const std = @import("std");

pub fn main() !void {
    // Inicializar o SDL

    const width = 800;
    const height = 600;
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
