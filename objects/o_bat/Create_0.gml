event_inherited();
initialize_movement_entity(1, .5, o_solid_for_enemies);

hpShow = 50;
hpmaxShow = 50;

enum bat {
	hit,
	move,
	attack
}
max_health_enemy = 50;
health_ = max_health_enemy;
starting_state_ = bat.move
state_ = starting_state_;
alarm[1] = global.one_second*random_range(0, 1);
range_ = 64;
image_index = 0;
image_xscale = choose(1, -1);
image_speed = .5;