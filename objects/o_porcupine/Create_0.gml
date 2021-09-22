event_inherited();
initialize_movement_entity(1, .5, o_solid_for_enemies);

hpShow = 25;
hpmaxShow = 25;

enum porcupine {
	hit,
	idle,
	move,
	attack,
	wait
}
max_health_enemy = 25;
health_ = max_health_enemy;
starting_state_ = porcupine.idle
state_ = starting_state_

image_index = 0;
image_xscale = choose(1, -1);

alarm[1] = random_range(0, 1) * global.one_second;