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
chispa_pos_x = [50, 110, 690, 196]; // X en cada nivel
chispa_pos_y = [58, 240, 70, 28];    // Y en cada nivel

bruma_pos_x = [ 445, 627, 270]; // X en cada nivel
bruma_pos_y = [ 23, 267, 90];    // Y en cada nivel

luna_pos_x = [ 800, 224]; // X en cada nivel
luna_pos_y = [ 211, 180];    // Y en cada nivel


//generacion de figuras en el room
//Se agregan las instancias a un array para mantener control de ellos
array_chispas = [];
for (var i = 0; i < 4; i++) {
    var chispa_inst = instance_create_layer(chispa_pos_x[i], chispa_pos_y[i], "Figuras", obj_Chispa);
    chispa_inst.image_xscale = 0.3;  // 50% del tamaño original
    chispa_inst.image_yscale = 0.3;
    array_chispas[i] = chispa_inst;
}

array_bruma = [];
for (var i = 0; i < 3; i++) {
    var bruma_inst = instance_create_layer(bruma_pos_x[i], bruma_pos_y[i], "Figuras", obj_Bruma);
    bruma_inst.image_xscale = 0.4;  // 80% del tamaño original
    bruma_inst.image_yscale = 0.4;
    array_bruma[i] = bruma_inst;
}

array_luna = [];
for (var i = 0; i < 2; i++) {
    var luna_inst = instance_create_layer(luna_pos_x[i], luna_pos_y[i], "Figuras", obj_Luna);
    luna_inst.image_xscale = 0.35;  // 30% del tamaño original
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
    // Crear selectores de color en posiciones fijas
    instance_create_layer(200, 450, "Instances", obj_Selector_Rojo);
    instance_create_layer(350, 450, "Instances", obj_Selector_Azul);
    instance_create_layer(500, 450, "Instances", obj_Selector_Verde);
    instance_create_layer(680, 450, "Instances", obj_Selector_Morado);
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

