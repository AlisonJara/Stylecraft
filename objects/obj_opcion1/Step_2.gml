if (estaArrastrando) {
    // Seguir al mouse
    x = mouse_x;
    y = mouse_y;

    // Detectar si se soltó el mouse
    if (!mouse_check_button(mb_left)) {
        estaArrastrando = false;

        var zona = instance_place(x, y, obj_zynk);
        if (zona != noone) {
            if (zona.idEsperado == idRespuesta) {
                zona.ocupado = true;
                x = zona.x;
                y = zona.y;
                // Aquí podrías desactivar esta opción o cambiar su apariencia
            } else {
                // Soltado sobre zona incorrecta
                x = posInicialX;
                y = posInicialY;
            }
        } else {
            // No se soltó sobre ninguna zona
            x = posInicialX;
            y = posInicialY;
        }
    }
}
