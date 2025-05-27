var inst = instance_find(Obj_mensaje_feedback, 0);
var next = instance_find(Obj_siguiente_nivel, 0);
if (!other.being_dragged) {
	if (string_lower(other.valor) == "#accion{color:green;}") {
	    // Mostrar respuesta correcta
	    layer_set_visible("Assets_Imagen_RespuestaEstandar", false);
	    layer_set_visible("Assets_Imagen_RespuestaIncorrecta", false);
	    layer_set_visible("Assets_Imagen_RespuestaCorrecta", true);
	    inst.mensaje = "Correcto!\n Usar # es la \nforma adecuada \nde utilizar \nun selector";
	    inst.visible = true;
		if (instance_exists(next)) {
	    with (next) {
	        visible = true;
	        activo = true;
		    }
		}
	    other.x = other.x_ini;
	    other.y = other.y_ini;
	}	
}
