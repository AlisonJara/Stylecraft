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

var estrellas = global.niveles_estrellas[nivel];
for (var i = 0; i < 3; i++) {
    if(nivel<4){
        if (i < estrellas) {
            draw_sprite_ext(Spr_Star, 0, 484+(i*width_beetwen_stars)+(nivel*width_beetwen_levels), 165, 0.1 , 0.1 , 0 , c_white, 1);
        }
    }
    else if(nivel<8 && nivel>3){
        if (i < estrellas) {
            draw_sprite_ext(Spr_Star, 0, 484+(i*width_beetwen_stars)+(nivel*width_beetwen_levels), 324, 0.1 , 0.1 , 0 , c_white, 1);
        }
    }
    else if(nivel<12 && nivel>7){ 
        if (i < estrellas) {
            draw_sprite_ext(Spr_Star, 0, 484+(i*width_beetwen_stars)+(nivel*width_beetwen_levels), 484, 0.1 , 0.1 , 0 , c_white, 1); 
        }
    }
}
