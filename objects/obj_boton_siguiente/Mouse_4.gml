if (activo) {
    // Pide al controlador que avance de nivel
    with (obj_Controlador_Basico) {
        avanzar_nivel();
    }
    activo = true; // Se desactiva después de usarse (opcional)
}
