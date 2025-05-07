if (hovered) {                //cambia valores de alpha
    image_alpha = 1;
} else {
    image_alpha = 0.7;
}


draw_self();

image_alpha=0.7;
draw_set_font(fnt_texto_numero_niveles);    //escoge la fuente

draw_set_halign(fa_center);     //alinea el texto al centro 
draw_set_valign(fa_middle);

draw_set_colour(c_black);    //color negro
draw_text(x,y, button_text);    //colisiones de boton

draw_set_halign(fa_left);        //vuelve la conf de disposicion de texto a default
draw_set_valign(fa_top);