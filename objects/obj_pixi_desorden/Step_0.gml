// Buscar si una opción fue soltada sobre este Pixi
var op = instance_place(x, y, obj_opcion1);

if (op != noone && !mouse_check_button(mb_left)) {
    // El jugador soltó el botón del mouse y hay una opción sobre el Pixi

    if (op.es_correcta) {
        // Opción correcta: cambiar Pixi
        visible = false; // ocultar el desordenado

        var pixiOrdenado = instance_nearest(x, y, obj_pixi_orden);
        if (pixiOrdenado != noone) {
            pixiOrdenado.visible = true;
        }

        // (opcional) fijar la opción en su lugar
        op.x = x;
        op.y = y;
        op.estaArrastrando = false;
    } else {
        // Opción incorrecta: devolverla
        op.x = op.x0;
        op.y = op.y0;
        op.estaArrastrando = false;
    }
}
