// obj_Luna - Evento Create
spr_black = spr_Luna_Black;
spr_rojo = spr_Luna_Red;
spr_azul = spr_Luna_Blue;
spr_verde = spr_Luna_Green;
spr_purple = spr_Luna_Purple;


// Puedes iniciar en gris
sprite_index = spr_black;

//cambiar color de sprite
function cambiar_color(color_nombre) {
    switch (color_nombre) {
        case "negro":
            sprite_index = spr_black;
            break;
        case "rojo":
            sprite_index = spr_rojo;
            break;
        case "azul":
            sprite_index = spr_azul;
            break;
        case "verde":
            sprite_index = spr_verde;
            break;
        case "morado":
            sprite_index = spr_purple;
        // Agregar mas si es necesario
    }
}