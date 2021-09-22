if image_angle != 270 {
	draw_sprite_ext(sprite_index, image_index, x, y+2, image_xscale, image_yscale, image_angle, c_black, 0.4);	
}
draw_sprite_ext(sprite_index, image_index, x, y+1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
