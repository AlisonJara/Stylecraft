draw_set_font(fnt_texto_preguntas);
draw_text(350, 600, "ESCRIBE UNA LiNEA QUE PERMITA CAMBIAR\n EL COLOR SELECCIONADO ID = 'ACCESO'");


draw_set_color(c_white);
draw_rectangle(190, 670, 1050, 730, false);

draw_set_color(c_black);
draw_text(350, 685, texto_ingresado);

draw_text(780, 240, mensaje); // Mensaje de correcto/incorrecto
