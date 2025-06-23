if (visible) {
    // Dibuja el sprite del globo de diálogo centrado (ajusta x, y según tu layout)
    draw_sprite_ext(spr_DialogoBox_1, 0, 128, 10, 0.48, 0.56, 0, c_white, 1);
    
    // Dibuja el texto encima del sprite, con margen
    var margen_x = 25;
    var margen_y = 15;
    var ancho_texto = 215; // Ajusta según el sprite
    draw_set_color(c_black);
    draw_set_font(fnt_texto_preguntas); // Usa tu fuente favorita
    draw_text_ext(128 + margen_x, 10 + margen_y, texto_mensaje, -1, ancho_texto);
}
