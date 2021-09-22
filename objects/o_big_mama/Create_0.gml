event_inherited();
enum bigmama {
	hit,
	move,
	attack,
}
max_health_boss = 500;
health_ = max_health_boss;

starting_state_ = bigmama.move;
state_ = starting_state_;
alarm[1] = global.one_second * random_range(0, 1);
alarm[2] = global.one_second * random_range(0,1);
image_index = 0;
image_speed = 1;
image_xscale = choose(-1, 1);
range_ = 500;