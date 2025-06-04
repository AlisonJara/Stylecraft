draw_self();
draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + sprite_width * 0.5, y + sprite_height * 0.5, string(css_text));
draw_set_halign(fa_left);
draw_set_valign(fa_top);