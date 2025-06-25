if (estaArrastrando) {
    // Seguir al mouse mientras se arrastra
    x = mouse_x;
    y = mouse_y;

    // Detectar si se soltó el mouse
    if (!mouse_check_button(mb_left)) {
        estaArrastrando = false;

        // Buscar si fue soltado sobre el pixi desordenado
        var pixi = instance_place(x, y, obj_pixi_desorden);

        if (pixi != noone) {
            if (es_correcta) {
                // Ocultar el pixi desordenado
                pixi.visible = false;

                // Mostrar pixi ordenado
                var pixiOrdenado = instance_nearest(x, y, obj_pixi_orden);
                if (pixiOrdenado != noone) {
                    pixiOrdenado.visible = true;
                }

                // Ocultar todas las opciones
                with (obj_opcion1) {
                    visible = false;
                }

                // También te puedes asegurar de fijar la opción en el lugar si se desea
                x = pixi.x;
                y = pixi.y;

            } else {
                // Incorrecto: volver al inicio
                x = posInicialX;
                y = posInicialY;
            }
        } else {
            // No se soltó sobre ninguna zona válida
            x = posInicialX;
            y = posInicialY;
        }
    }
}
