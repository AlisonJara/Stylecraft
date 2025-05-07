if (hovered) {                //cambia valores de alpha
    image_alpha = 1;
} else {
    image_alpha = 0.7;
}


draw_self();

draw_set_font(fnt_menu_btn);    //escoge la fuente

draw_set_halign(fa_center);     //alinea el texto al centro 
draw_set_valign(fa_middle);

draw_set_colour(c_white);        //color blanco
draw_text(x,y, button_text);    //colisiones de boton

draw_set_halign(fa_left);        //vuelve la conf de disposicion de texto a default
draw_set_valign(fa_top);