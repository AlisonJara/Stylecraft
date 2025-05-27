var inst = instance_find(Obj_mensaje_feedback, 0);
if (!other.being_dragged) {
	if (string_lower(other.valor) == "nope") {
    // Mostrar respuesta correcta
    layer_set_visible("Assets_Imagen_RespuestaEstandar", true);
    layer_set_visible("Assets_Imagen_RespuestaIncorrecta", true);
    layer_set_visible("Assets_Imagen_RespuestaCorrecta", false);
	
    inst.mensaje = "Incorrecto.\nIntenta otra vez.\nRecuerda el formato:\n#id{propiedad:valor;}";
    inst.visible = true;
    other.x = other.x_ini;
    other.y = other.y_ini;
}
}

