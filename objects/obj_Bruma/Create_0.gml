// obj_Bruma - Evento Create
spr_black = spr_Bruma_Black;
spr_rojo = spr_Bruma_Red;
spr_azul = spr_Bruma_Blue;
spr_verde = spr_Bruma_Green;
spr_purple = spr_Bruma_Purple;


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