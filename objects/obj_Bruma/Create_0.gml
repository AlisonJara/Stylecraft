// obj_Bruma - Evento Create
spr_black = spr_Bruma_Black;
spr_rojo = spr_Bruma_Red;
spr_azul = spr_Bruma_Blue;
spr_verde = spr_Bruma_Green;
spr_purple = spr_Bruma_Purple;
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