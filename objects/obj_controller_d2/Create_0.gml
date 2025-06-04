var opciones = [
    ["div { transition: background-color 0.3s, color 0.5s; }", true],
    ["button { transition: transform 0.3s ease, opacity 0.4s ease-in; }", false],
    [".card { transition: padding 0.2s, margin 0.2s; }", false],
    ["img:hover { transition: filter 0.3s, transform 0.4s; }", false],
    ["nav { transition: width 0.3s, background 0.5s ease-in-out; }", false],
    [".box { transition: border 0.2s ease, background-color 0.2s ease-in-out; }", false],
    ["li { transition: font-size 0.3s, letter-spacing 0.3s; }", false],
    [".panel { transition: height 0.4s, opacity 0.4s ease-in-out; }", false],
    ["footer { transition: padding 0.3s ease, background 0.3s; }", false],
    ["aside { transition: margin 0.4s, transform 0.3s ease-in; }", false],
    [".wrapper { transition: gap 0.2s, border-radius 0.3s; }", false],
    ["form { transition: box-shadow 0.2s, background 0.4s; }", false],
    [".icon { transition: scale 0.3s, opacity 0.2s ease-out; }", false],
    ["h3 { transition: color 0.3s, background-color 0.4s ease-in; }", false],
    [".container { transition: max-width 0.3s, padding 0.2s; }", false]
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
