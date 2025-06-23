// obj_Luna - Evento Create
spr_black = spr_Luna_Black;
spr_rojo = spr_Luna_Red;
spr_azul = spr_Luna_Blue;
spr_verde = spr_Luna_Green;
spr_purple = spr_Luna_Purple;
coloreado = false; // Estado inicial: no coloreado

// Puedes iniciar en gris
sprite_index = spr_black;

//cambiar color de sprite
function cambiar_color(color_nombre) {
    switch (color_nombre) {
        case "negro":
            sprite_index = spr_black;
            coloreado = false;
            break;
        case "rojo":
            sprite_index = spr_rojo;
            coloreado = true;
            break;
        case "azul":
            sprite_index = spr_azul;
            coloreado = true;
            break;
        case "verde":
            sprite_index = spr_verde;
            coloreado = true;
            break;
        case "morado":
            sprite_index = spr_purple;
            coloreado = true;
        // Agregar mas si es necesario
    }
}