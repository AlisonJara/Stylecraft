if (boton_activado) {
    // Pide al controlador que avance de nivel
    with (obj_Controlador_Basico) {
        avanzar_nivel();
    }
    boton_activado = false; // Se desactiva después de usarse (opcional)
}
