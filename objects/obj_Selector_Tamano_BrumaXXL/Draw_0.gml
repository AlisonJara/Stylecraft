// obj_Selector_Azul - Draw Event
// Dibujar el sprite del botón
draw_self();

// Dibujar el texto encima

image_alpha=0.7;
draw_set_font(fnt_texto_numero_niveles);    //escoge la fuente
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black); 
//draw_text(x, y, button_text);

// Usar escalado para hacer el texto más pequeño
var text_scale = 0.5; // 70% del tamaño original
draw_text_transformed(x, y, button_text, text_scale, text_scale, 0);

// Resetear configuración de texto
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);