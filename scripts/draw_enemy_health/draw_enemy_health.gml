function draw_enemy_health() {
	var height = sprite_height;
	hpShow = lerp(hpShow, health_, 1);
	hpmaxShow = lerp(hpmaxShow, max_health_enemy, 1);

	var maxhpWidth = (hpmaxShow/max_health_enemy)*sprite_get_width(sHealthbar_enemy);
	var hpWidth = (hpShow/max_health_enemy)*sprite_get_width(sHealthbar_enemy);
	var hpHeight = sprite_get_height(sHealthbar_enemy);


	draw_sprite_stretched(sHealthbar_enemy, 1, x-22, y-height-7, maxhpWidth, hpHeight);
	draw_sprite_stretched(sHealthbar_enemy, 0, x-22, y-height-7, hpWidth, hpHeight);
	draw_sprite(sHealthbar_enemy_grid, 1, x-22, y-height-7);


}
