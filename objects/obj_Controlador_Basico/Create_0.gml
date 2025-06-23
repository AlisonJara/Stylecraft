view_w = 960;
view_h = 540;
nivel_actual = 0;
nivel_completado = false;
instancias_nivel = ds_list_create();

max_niveles = 3; // o puedes obtenerlo del JSON

/* 1. Cargar JSON de tema
var file = file_text_open_read("data/tema_1_selectores.json");
var texto_json = "";
while (!file_text_eof(file)) {
    texto_json += file_text_read_string(file);
    file_text_readln(file);
}
file_text_close(file);
tema_data = json_parse(texto_json);*/

// 2. Crear cámara
if (!(view_camera[0])) {
    cam = camera_create_view(0, 0, view_w, view_h, 0, -1, -1, -1, -1, 0);
    view_camera[0] = cam;
} else {
    cam = view_camera[0];
}

// 3. Posicionar cámara y cargar primer nivel

mover_a_nivel(nivel_actual, cam, view_w);
//cargar_nivel(nivel_actual); desde .json


//4. Cambiar color de objetos
function aplicar_color(figura, color) {
    switch (figura) {
        case "Chispa":
            with (obj_Chispa) { cambiar_color(color); }
            break;
        case "Bruma":
            with (obj_Bruma) { cambiar_color(color); }
            break;
        case "Luna":
            with (obj_Luna) { cambiar_color(color); }
            break;
    }
}

//siguiente nivel
function avanzar_nivel() {
    nivel_actual += 1;
    if(nivel_actual<=3){
        
        if(nivel_actual>0){
            mostrar_selectores(false);
        }
        
        // Mueve la cámara a la vista/sección siguiente
        mover_a_nivel(nivel_actual, cam, view_w);
        
        //mover las figuras
        mover_figuras_por_nivel();
        
        // Oculta el botón otra vez hasta que se complete el nuevo nivel
        with (obj_boton_siguiente) {
            //activo = false;
            image_alpha = 0;
        }
    }else{
        //go to seleccion de nivel 
        room_goto(rm_SeleccionNivel);
    }    
}


//ubicación original de figuras
chispa_pos_x = [660]; // X en cada nivel
chispa_pos_y = [200];    // Y en cada nivel

bruma_pos_x = [ 420]; // X en cada nivel
bruma_pos_y = [ 23];    // Y en cada nivel

luna_pos_x = [224]; // X en cada nivel
luna_pos_y = [180];    // Y en cada nivel


//generacion de figuras en el room
//Se agregan las instancias a un array para mantener control de ellos
array_chispas = [];
for (var i = 0; i < 1; i++) {
    var chispa_inst = instance_create_layer(chispa_pos_x[i], chispa_pos_y[i], "Figuras", obj_Chispa);
    chispa_inst.image_xscale = 0.3;  // % del tamaño original
    chispa_inst.image_yscale = 0.3;
    array_chispas[i] = chispa_inst;
}

array_bruma = [];
for (var i = 0; i < 1; i++) {
    var bruma_inst = instance_create_layer(bruma_pos_x[i], bruma_pos_y[i], "Figuras", obj_Bruma);
    bruma_inst.image_xscale = 0.3;  // % del tamaño original
    bruma_inst.image_yscale = 0.3;
    array_bruma[i] = bruma_inst;
}

array_luna = [];
for (var i = 0; i < 1; i++) {
    var luna_inst = instance_create_layer(luna_pos_x[i], luna_pos_y[i], "Figuras", obj_Luna);
    luna_inst.image_xscale = 0.35;  // % del tamaño original
    luna_inst.image_yscale = 0.35;
    array_luna[i] = luna_inst;
}

//desplazamiento al pasar de nivel
// Al pasar de nivel
function mover_figuras_por_nivel() {
    // Mover todas las chispas
    desplazamiento_x=960;
    for (var i = 0; i < array_length(array_chispas); i++) {
        if (instance_exists(array_chispas[i])) {
            array_chispas[i].x += desplazamiento_x;
        }
    }
    
    // Mover todas las brumas
    for (var i = 0; i < array_length(array_bruma); i++) {
        if (instance_exists(array_bruma[i])) {
            array_bruma[i].x += desplazamiento_x;
        }
    }
    
    // Mover todas las lunas
    for (var i = 0; i < array_length(array_luna); i++) {
        if (instance_exists(array_luna[i])) {
            array_luna[i].x += desplazamiento_x;
        }
    }
}

if (nivel_actual == 0) {
    // Crear selectores de color en posiciones fijas con escala personalizada
var rojo = instance_create_layer(300, 400, "Instances", obj_Selector_Rojo_Bruma);
rojo.image_xscale = 3; // Escala horizontal
rojo.image_yscale = 0.7; // Escala vertical

var azul = instance_create_layer(650, 400, "Instances", obj_Selector_Azul_Luna);
azul.image_xscale = 3;
azul.image_yscale = 0.7;

var verde = instance_create_layer(300, 480, "Instances", obj_Selector_Verde_Chispa);
verde.image_xscale = 3;
verde.image_yscale = 0.7;

var morado = instance_create_layer(650, 480, "Instances", obj_Selector_Morado);
morado.image_xscale = 3;
morado.image_yscale = 0.7;
}

function mostrar_selectores(mostrar) {
    with (obj_Selector_Parent) {
        visible = mostrar;
        if (mostrar) {
            x = start_x;
            y = start_y;
        }
    }
}

//verificar las figuras estanc coloreadas en nivel 1
function todas_figuras_coloreadas() {
    // Chequea Chispas
    for (var i = 0; i < array_length(array_chispas); i++) {
        if (instance_exists(array_chispas[i]) && !array_chispas[i].coloreado) {
            return false;
        }
    }
    // Chequea Brumas
    for (var i = 0; i < array_length(array_bruma); i++) {
        if (instance_exists(array_bruma[i]) && !array_bruma[i].coloreado) {
            return false;
        }
    }
    // Chequea Lunas
    for (var i = 0; i < array_length(array_luna); i++) {
        if (instance_exists(array_luna[i]) && !array_luna[i].coloreado) {
            return false;
        }
    }
    return true;
}



