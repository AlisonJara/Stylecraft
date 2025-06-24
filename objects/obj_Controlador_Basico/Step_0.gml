//condicion nivel 1
if (todas_figuras_coloreadas()){
    obj_boton_siguiente.boton_activado=true;
    with (obj_TextoEmergente_1) {
        visible = true;
        layer_set_visible("Mensaje", true);
        texto_mensaje = "Bien Hecho! \nPresiona el portal\npara continuar.";
        //hacer que aparezcan estrellas en el selector de nivel
    }
    
    //hacer visible la capa mensaje y enviar mensaje
}


//condicion nivel 2
/*if (todas_figuras_distinto_tamano()){
    //poner mensaje emergente
    with(obj_TextoEmergente_2){
        visible = true;
        layer_set_visible("Mensaje", true);
        texto_mensaje = "Bien Hecho! \nPresiona el portal\npara continuar.";
        //que aparezcan las estrellas en selector de nivel
    }
}*/


