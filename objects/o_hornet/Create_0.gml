event_inherited();

enum hornet {
	hit,
	move,
	attack,
}

max_health_enemy = 50;
health_ = max_health_enemy;

starting_state_ = hornet.move;
state_ = starting_state_;
alarm[1] = global.one_second * random_range(0, 1);
alarm[2] = global.one_second/8 * random_range(6,8);
image_index = 0;
image_speed = 1;
image_xscale = choose(-1, 1);
range_ = 128;