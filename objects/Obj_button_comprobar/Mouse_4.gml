var input = instance_find(Obj_input_nivel_1, 0);
var next = instance_find(Obj_siguiente_nivel, 0);

if (is_undefined(input)) exit;

if (string_lower(input.texto_ingresado) == string_lower(input.respuesta_correcta)) {
    layer_set_visible("Assets_Imagen_RespuestaEstandar",false);
    layer_set_visible("Assets_Imagen_RespuestaIncorrecta", false);
    layer_set_visible("Assets_Imagen_RespuestaCorrecta", true);
	if (instance_exists(next)) {
    with (next) {
        visible = true;
        activo = true;
	    }
	}
    input.mensaje = "Correcto!\n Usar # es la \nforma adecuada de \nutilizar un selector";
} else {
    layer_set_visible("Assets_Imagen_RespuestaCorrecta", false);
    layer_set_visible("Assets_Imagen_RespuestaIncorrecta", true);
    input.mensaje = "Incorrecto.\nIntenta otra vez.\nRecuerda el formato:\n#id{propiedad:valor;}";
}
