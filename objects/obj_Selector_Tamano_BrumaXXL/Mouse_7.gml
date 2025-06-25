dragging = false;

var figura_colisionada = instance_place(x, y, obj_Chispa);
if (figura_colisionada != noone) {
    //figura_colisionada.cambiar_tamano(tamano); // ¡Listo!
        with (obj_TextoEmergente_2) {
        visible = true;
        layer_set_visible("Mensaje", true);
        texto_mensaje = "Debes usar el \nID que corresponde \npara este personaje!";
    }
}

var figura_colisionada = instance_place(x, y, obj_Luna);
if (figura_colisionada != noone) {
    //figura_colisionada.cambiar_tamano(tamano); // ¡Listo!
        with (obj_TextoEmergente_2) {
            visible = true;
            layer_set_visible("Mensaje", true);
            texto_mensaje = "Debes usar el \nID que corresponde \npara este personaje!";
    }
}

var figura_colisionada = instance_place(x, y, obj_Bruma);
if (figura_colisionada != noone) {
    figura_colisionada.cambiar_tamano(tamano); // ¡Listo!
}


// Si no se aplicó, regresa a posición original
x = start_x;
y = start_y;
