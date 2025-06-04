if (mouse_check_button_pressed(mb_left)) {
    is_dragging = true;
}
if (mouse_check_button_released(mb_left)) {
    if (is_dragging && place_meeting(mouse_x, mouse_y, obj_zynk)) {
        if (es_correcta) {
            with (obj_zynk) {
                transition_aplicada = true;
                trans_duracion = 0.05;
                trans_estilo = 0.05;
            }
        } else {
            show_message("¡Esa línea no activa a Zynk!");
        }
        instance_destroy();
    }
    is_dragging = false;
}
if (is_dragging) {
    x = mouse_x;
    y = mouse_y;
}