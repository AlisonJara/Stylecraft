var _w = display_get_gui_width();
var _h = display_get_gui_height();

var btn_width = 140;
var btn_height = 40;
var spacing = 20;
var total_width = (btn_width * 4) + (spacing * 3);
var start_x = (_w - total_width) / 2;
var btn_y = _h - 100;

for (var i = 0; i < 4; i++) {
    var btn_x = start_x + i * (btn_width + spacing);
    if (point_in_rectangle(mouse_x, mouse_y, btn_x, btn_y, btn_x + btn_width, btn_y + btn_height)) {
        dragging_index = i;
        dragging_offset_x = mouse_x - btn_x;
        dragging_offset_y = mouse_y - btn_y;
        break;
    }
}
