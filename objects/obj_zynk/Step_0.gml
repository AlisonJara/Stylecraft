if (transition_aplicada) {
    scale_target = 1.3;
    color_target = c_lime;
}

image_xscale = lerp(image_xscale, scale_target, scale_speed);
image_yscale = lerp(image_yscale, scale_target, scale_speed);
image_blend = merge_color(image_blend, color_target, 0.1);