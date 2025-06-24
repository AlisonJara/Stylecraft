// 🧹 Elimina opciones anteriores (si existen)
with (obj_opcion1) {
    instance_destroy();
}
// Opciones posibles actualizadas con tu contenido
var opciones = [
    [".entidad-animada { transition: all 0.3s ease; }", true],
    [".entidad-animada:hover { transition: color 0.5s ease-in; }", false],
    [".entidad-animada { transition: background-color 0.2s linear; }", false],
    [".entidad-animada input { transition: border 0.4s ease-out; }", false],
    ["#vibra-loop { transition: opacity 0.6s ease-in-out; }", false],
    ["#vibra-loop { transition: transform 0.3s ease; }", false],
    ["#vibra-loop { transition: all 0.5s; }", false],
    [".entidad-animada img:hover { transition: filter 0.2s; }", false],
    [".entidad-animada .box { transition: padding 0.25s; }", false],
    ["#vibra-loop li { transition: margin 0.3s ease; }", false],
    ["#vibra-loop nav { transition: background 0.4s ease; }", false],
    [".entidad-animada .panel { transition: width 0.3s ease-in; }", false],
    ["#vibra-loop .icon { transition: scale 0.4s ease-out; }", false],
    [".entidad-animada h1 { transition: letter-spacing 0.5s; }", false],
    ["#vibra-loop footer { transition: height 0.3s ease-in-out; }", false]
];

// 🎲 Elegir 4 opciones únicas al azar
var seleccionadas = [];
while (array_length(seleccionadas) < 4) {
    var idx = irandom(array_length(opciones) - 1);
    if (!array_contains(seleccionadas, idx)) {
        array_push(seleccionadas, idx);
    }
}

// 📦 Crear las 4 opciones en pantalla
var posX = x;
var espaciado = 320;

for (var i = 0; i < array_length(seleccionadas); i++) {
    var data = opciones[seleccionadas[i]];
    
    var opt = instance_create_layer(posX + i * espaciado, y + 420, "Instances", obj_opcion1);
    opt.texto = data[0];         // texto visible (fragmento CSS)
    opt.es_correcta = data[1];   // si es la opción correcta
    opt.x0 = opt.x;              // guardar posición inicial
    opt.y0 = opt.y;
}
