//condicion nivel 1
if (todas_figuras_coloreadas()){
    obj_boton_siguiente.boton_activado=true;
    with (obj_TextoEmergente_1) {
        visible = true;
        layer_set_visible("Mensaje", true);
        texto_mensaje = "Bien Hecho! \nPresiona el portal\npara continuar.";
    }
    
    //hacer visible la capa mensaje y enviar mensaje
}


//condicion nivel 2
