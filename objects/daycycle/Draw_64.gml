if room == r_carrout {
	exit;
}

if room == r_title {
	exit;
}

if room == r_game_over {
	exit;
}

if room == r_how_to_play_title {
	exit;
}

if room == r_how_to_play_pause {
	exit;
}


if(draw_daylight) {
var c = light_color
draw_set_alpha(darkness);
draw_rectangle_color(0, 0, guiWidth, guiHeight, c,c,c,c, false);
draw_set_alpha(1);
}

//-----------------THIS IS TO TEST VALUES OF TIME IN THE GAME
//var c = c_yellow
//draw_text_color(10,10, string(seconds), c,c,c,c, 1);
//draw_text_color(10,30, string(minutes), c,c,c,c, 1);
//draw_text_color(10,50, string(hours), c,c,c,c, 1);
//draw_text_color(10,70, string(day), c,c,c,c, 1);
//draw_text_color(10,90, string(season), c,c,c,c, 1);
//draw_text_color(10,110, string(year), c,c,c,c, 1);
