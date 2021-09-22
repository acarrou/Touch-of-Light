
depth = -200
//draw textbox
draw_sprite(s_textbox, 0, x,y);

//draw event

//draw_set_font(f_def);

if(character_count < string_length(text[page])) {
	character_count += 0.5;
}

text_part = string_copy(text[page], 1, character_count);

draw_set_halign(fa_center);
draw_text(x+ box_width/2,y+y_buffer-5, name);
draw_set_halign(fa_left);

draw_text_ext(x+x_buffer,y+string_height_+y_buffer, text_part, string_height_, box_width - (2*x_buffer));