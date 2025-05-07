var tecla = keyboard_lastchar;

// Agregar caracteres (evita teclas especiales como Enter o Shift)
if (ord(tecla) >= 32 && ord(tecla) <= 126 && string_length(texto_ingresado) < longitud_maxima) {
    if (keyboard_string != texto_ingresado) {
        texto_ingresado += tecla;
    }
}

// Borrar con Backspace
if (keyboard_check_pressed(vk_backspace) && string_length(texto_ingresado) > 0) {
    texto_ingresado = string_delete(texto_ingresado, string_length(texto_ingresado), 1);
}

