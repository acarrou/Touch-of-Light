event_inherited();
initialize_movement_entity(1, .5, o_solid_for_enemies);

damage_ = 50;
enum rock {
	hit,
	move,
	attack
}
//bosses max health
max_health_boss = 750;
health_ = max_health_boss;

starting_state_ = rock.move
state_ = starting_state_;
alarm[1] = global.one_second*random_range(0, 1);
range_ = 150;

image_index = 0;
image_xscale = choose(1, -1);
image_speed = .5;