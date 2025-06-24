// Dibuja el fondo (sprite del botón)
draw_self();

// Ajustes de texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// Definir área de texto: límites del botón
var ancho = sprite_width - 20;  // padding horizontal
var alto = sprite_height - 20; // padding vertical
var x_text = x + sprite_width / 2;
var y_text = y + sprite_height / 2;

// Dibujar el texto con ajuste automático de línea
draw_text_ext(x_text, y_text, texto, -1, ancho div string_width("A"));
