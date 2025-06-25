function otorgar_estrellas(errores, nivel){
    var estrellas = 1;        //nivel completado
    if (errores <= 2) estrellas = 3;        //menos de 2 errores + 2 estrellas
    else if (errores <= 5) estrellas = 2;        //mas de 2 pero menos de 5 errores + 1 estrella

    if (estrellas > global.niveles_estrellas[nivel]) {
        global.niveles_estrellas[nivel] = estrellas;
    }
}