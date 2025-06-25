if (boton_activado) {
    // Pide al controlador que avance de nivel
    with (obj_Controlador_Basico) {
        //avanzar_nivel();
        room_goto(rm_SeleccionNivel);
    }
    boton_activado = false; // Se desactiva después de usarse (opcional)
}
