// obj_Chispa - Evento Create
spr_black = spr_Chispa_Black;
spr_rojo = spr_Chispa_Red;
spr_azul = spr_Chispa_Blue;
spr_verde = spr_Chispa_Green;
spr_purple = spr_Chispa_Purple;


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