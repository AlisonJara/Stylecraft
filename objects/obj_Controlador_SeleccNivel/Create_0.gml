var max_niveles=12;

if (!variable_global_exists("niveles_estrellas")) {
    global.niveles_estrellas = array_create(max_niveles, 0); // 0 estrellas en todos al inicio
}

