if (visible) {
    draw_self(); // fondo
    draw_set_font(fnt_feedback); // usar fuente ajustada
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x, y, mensaje);
}
