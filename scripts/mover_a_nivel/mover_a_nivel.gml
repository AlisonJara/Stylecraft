/// @function mover_a_nivel(n, cam, view_w)
/// @param n          // número de nivel (0, 1, 2…)
/// @param cam        // referencia a la cámara
/// @param view_w     // ancho de la vista/cámara

function mover_a_nivel(n, cam, view_w) {
    var x_destino = n * view_w;
    camera_set_view_pos(cam, x_destino, 0);
}