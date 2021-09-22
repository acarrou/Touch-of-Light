
initialize_movement_entity(1, .5, o_solid_for_enemies);
initialize_hurtbox_entity();

if is_in_destroyed_list(id) {
	instance_destroy();
}

image_speed = 0;

damage_ = 25;

starting_state_ = noone;
state_ = starting_state_;

enum boss {
	hit 	
}