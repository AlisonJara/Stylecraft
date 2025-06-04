// Create Event de obj_controlador_pregunta1 (versión final con limpieza y reinicio)

// Elimina todas las opciones anteriores si ya existían
with (obj_ccs_option) {
    instance_destroy();
}

// Asegúrate que obj_css_option esté creado y visible en el Asset Browser antes de compilar

var opciones = [
    ["button { transition: all 0.3s ease; }", true],
    ["div { transition: opacity 0.5s ease-in; }", false],
    [".card { transition: background-color 0.3s linear; }", false],
    ["input { transition: border 0.4s ease-out; }", false],
    ["section { transition: transform 0.3s ease; }", false],
    ["img:hover { transition: filter 0.3s; }", false],
    [".panel { transition: width 0.3s; }", false],
    ["h1 { transition: letter-spacing 0.5s; }", false],
    ["nav { transition: background 0.4s ease; }", false],
    [".icon { transition: scale 0.4s ease-out; }", false],
    ["footer { transition: height 0.3s ease-in-out; }", false],
    [".item { transition: all 0.5s; }", false],
    ["li { transition: margin 0.3s ease; }", false],
    ["a:hover { transition: color 0.5s ease-in; }", false],
    [".box { transition: padding 0.25s; }", false]
];

var seleccionadas = [];
while (array_length(seleccionadas) < 4) {
    var idx = irandom(array_length(opciones) - 1);
    if (!array_contains(seleccionadas, idx)) array_push(seleccionadas, idx);
}

var posX = x;
var espaciado = 320;

for (var i = 0; i < array_length(seleccionadas); i++) {
    var data = opciones[seleccionadas[i]];
    var opt = instance_create_layer(posX + i * espaciado, y + 420, "Instances", obj_ccs_option);
    opt.css_text = data[0];
    opt.es_correcta = data[1];
    opt.x0 = opt.x; // posición original
    opt.y0 = opt.y;
}