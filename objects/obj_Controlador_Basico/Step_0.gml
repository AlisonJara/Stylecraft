if (instance_exists(obj_InstruccionesPanel)) {
    with (obj_InstruccionesPanel) {
        if (panel_activo) {
            exit; // Sal del Step del controlador si el panel sigue activo
        }
    }
}



//condicion nivel 1
if (todas_figuras_coloreadas()){
    obj_boton_siguiente.boton_activado=true;
    with (obj_TextoEmergente_1) {
        visible = true;
        layer_set_visible("Mensaje", true);
        texto_mensaje = "Bien Hecho! \nPresiona el portal\npara continuar.";
    }
    otorgar_estrellas(errores, nivel_actual);
    errores=0;
}


//condicion nivel 2
if (todas_figuras_tamano_alterado()){
    obj_boton_siguiente_1.boton_activado=true;
    with(obj_TextoEmergente_2){
        visible = true;
        layer_set_visible("Mensaje", true);
        texto_mensaje = "Bien Hecho! \nPresiona el portal\npara continuar.";
    }
    otorgar_estrellas(errores, nivel_actual=1);
    errores=0;
}


