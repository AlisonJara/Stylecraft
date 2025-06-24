dragging = false;

var figura_colisionada = instance_place(x, y, obj_Chispa);
if (figura_colisionada != noone) {
    figura_colisionada.cambiar_tamano(tamano); // ¡Listo!
    instance_destroy();
    exit;
}

var figura_colisionada = instance_place(x, y, obj_Luna);
if (figura_colisionada != noone) {
    figura_colisionada.cambiar_tamano(tamano); // ¡Listo!
    instance_destroy();
    exit;
}

var figura_colisionada = instance_place(x, y, obj_Bruma);
if (figura_colisionada != noone) {
    figura_colisionada.cambiar_tamano(tamano); // ¡Listo!
    instance_destroy();
    exit;
}


// Si no se aplicó, regresa a posición original
x = start_x;
y = start_y;
