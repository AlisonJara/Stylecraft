// obj_Chispa - Evento Create
spr_black = spr_Chispa_Black;
spr_rojo = spr_Chispa_Red;
spr_azul = spr_Chispa_Blue;
spr_verde = spr_Chispa_Green;
spr_purple = spr_Chispa_Purple;
coloreado = false; // Estado inicial: no coloreado
tamano_alterado= false;

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

function cambiar_tamano(tamano){
    switch (tamano) {
        case "normal":
            size_value = 0.3;
            tamano_alterado= false;
            break;
        case "small":
            size_value = 0.15;
            tamano_alterado= true;
            break;
        case "large":
            size_value = 0.4;
            tamano_alterado= true;
            break;
        // Agrega más si necesitas
    }
    image_xscale = size_value;
    image_yscale = size_value;
}
