// Evento Dibujar GUI definitivo con visualización de drag

draw_set_alpha(1);

var _w = display_get_gui_width();
var _h = display_get_gui_height();

var opciones = ["Opcion A", "Opcion B", "Opcion C", "Opcion D"];
var btn_width = 140;
var btn_height = 40;
var spacing = 20;
var total_width = (btn_width * 4) + (spacing * 3);
var start_x = (_w - total_width) / 2;
var btn_y = _h - 100;

// Fondo panel enunciado + botones
draw_set_alpha(0.6);
draw_set_color(make_color_rgb(15, 15, 35));
draw_roundrect(start_x - 20, btn_y - 90, start_x + total_width + 20, btn_y + btn_height + 20, false);
draw_set_alpha(1);

// Enunciado arriba de botones
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);
draw_set_color(c_white);
var enunciado = "Enunciado pregunta";
draw_text(start_x, btn_y - 70, enunciado);

// Dibujar todos los botones (excepto el que se arrastra)
for (var i = 0; i < 4; i++) {
    if (i == dragging_index) continue; // se dibuja aparte

    var btn_x = start_x + i * (btn_width + spacing);
    var hovered = point_in_rectangle(mouse_x, mouse_y, btn_x, btn_y, btn_x + btn_width, btn_y + btn_height);

    draw_set_color(hovered ? make_color_rgb(80, 80, 255) : make_color_rgb(50, 50, 120));
    draw_roundrect(btn_x, btn_y, btn_x + btn_width, btn_y + btn_height, false);

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(btn_x + btn_width / 2, btn_y + btn_height / 2, opciones[i]);
}

// Dibujar botón que se está arrastrando (si corresponde)
if (dragging_index != -1) {
    var dx = mouse_x - dragging_offset_x;
    var dy = mouse_y - dragging_offset_y;

    draw_set_color(make_color_rgb(100, 100, 255));
    draw_roundrect(dx, dy, dx + btn_width, dy + btn_height, false);

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(dx + btn_width / 2, dy + btn_height / 2, opciones[dragging_index]);
}

// Feedback texto de selección (opcional)
if (respuesta_seleccionada != -1) {
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(_w / 2, btn_y + btn_height + 40, "Seleccionaste: " + opciones[respuesta_seleccionada]);
}
