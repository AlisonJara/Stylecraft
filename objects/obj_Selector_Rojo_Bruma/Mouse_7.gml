dragging = false;

// Verificar colisión con cada tipo de figura individualmente
var figura_colisionada = instance_place(x, y, obj_Chispa);
if (figura_colisionada != noone) {
    //figura_colisionada.cambiar_color(color_name);
        with (obj_TextoEmergente_1) {
        visible = true;
        layer_set_visible("Mensaje", true);
        texto_mensaje = "Debes usar el \nID que corresponde \npara este personaje!";
    }
    obj_Controlador_Basico.errores+=1;
}

figura_colisionada = instance_place(x, y, obj_Bruma);
if (figura_colisionada != noone) {
    figura_colisionada.cambiar_color(color_name);
}

figura_colisionada = instance_place(x, y, obj_Luna);
if (figura_colisionada != noone) {
    //figura_colisionada.cambiar_color(color_name);
        with (obj_TextoEmergente_1) {
        visible = true;
        layer_set_visible("Mensaje", true);
        texto_mensaje = "Debes usar el \nID que corresponde \npara este personaje!"; 
    }
    obj_Controlador_Basico.errores+=1;
}

// Regresar a posición original
x = start_x;
y = start_y;
