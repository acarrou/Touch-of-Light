function draw_boss_health() {
	draw_rectangle_color(4*35, 4*60,  4*35+(health_/max_health_boss)*200, 4*61, c_red, c_red, c_red, c_red, false);
	draw_sprite(s_boss_health_bar, 1,4*35, 4*60)
	draw_sprite(s_boss_skull,0,4*33.5,4*59.5);


}
