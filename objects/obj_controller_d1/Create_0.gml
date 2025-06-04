var opciones = [
    ["button { transition-duration: 0.3s; }", true],
    ["div { transition-duration: 1s; transition-timing-function: ease; }", false],
    [".box { transition-duration: 0.5s; transition-timing-function: linear; }", false],
    ["section { transition-duration: 0.4s; transition-timing-function: ease-in; }", false],
    [".image { transition-duration: 0.25s; transition-timing-function: ease-out; }", false],
    ["nav { transition-duration: 0.6s; transition-timing-function: ease-in-out; }", false],
    [".banner { transition-duration: 0.8s; transition-timing-function: linear; }", false],
    ["h2 { transition-duration: 0.2s; }", false],
    ["footer { transition-duration: 1.2s; transition-timing-function: ease; }", false],
    [".card { transition-duration: 0.3s; transition-timing-function: ease-in-out; }", false],
    ["a:hover { transition-timing-function: ease; transition-duration: 0.4s; }", false],
    [".list { transition-timing-function: linear; transition-duration: 0.35s; }", false],
    ["aside { transition-duration: 0.5s; transition-timing-function: ease; }", false],
    [".icon { transition-duration: 0.1s; }", false],
    ["p { transition-duration: 0.7s; transition-timing-function: ease-out; }", false]
];

var seleccionadas = [];
while (array_length(seleccionadas) < 4) {
    var index = irandom(array_length(opciones) - 1);
    if (!array_contains(seleccionadas, index)) {
        array_push(seleccionadas, index);
    }
}

var posX = x;
for (var i = 0; i < array_length(seleccionadas); i++) {
    var data = opciones[seleccionadas[i]];
    var o = instance_create_layer(posX + i * 300, y + 300, "Instances", obj_css_option);
    o.css_text = data[0];
    o.es_correcta = data[1];
}
