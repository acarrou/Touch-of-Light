//Draw menu
menuX = x-40;
menuY = y;

for(var i=0; i<option_length_; i++){
	//Alpha
	if (i!=index_) draw_set_color(menu_dark_color_);
	//Draw
	draw_text(menuX, menuY + buffer_highlight*i, option_[i]);
	
	//Reset
	draw_set_color(menu_color_);
}

/*
draw_set_font(global.font);
draw_set_halign(fa_center);
for (var _i=0; _i<option_length_; _i++) {
	if _i == index_ {
		draw_set_color(menu_color_);
	} else {
		draw_set_color(menu_dark_color_);
	}
	draw_text(x, y+_i*12, option_[_i]);
}
draw_set_color(c_white);
draw_set_halign(fa_left);
