if (visible) {
    // Dibuja el sprite del globo de diálogo centrado (ajusta x, y según tu layout)
    draw_sprite_ext(FondoTexto, 0, 210, 102, 0.6423692, 0.7613636, 0, c_white, 1);
    
    // Dibuja el texto encima del sprite, con margen
    var margen_x = 25;
    var margen_y = 15;
    var ancho_texto = 450; // Ajusta según el sprite
    draw_set_color(c_white);
    draw_set_font(fnt_texto_preguntas); // Usa tu fuente favorita
    draw_text_ext(210 + margen_x, 102 + margen_y, texto_mensaje, -1, ancho_texto);
}
