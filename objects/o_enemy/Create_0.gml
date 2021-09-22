initialize_movement_entity(1, .5, o_solid_for_enemies);
initialize_hurtbox_entity();

hpShow = 25;
hpmaxShow = 25;

damage_ = 20
image_speed = 0;
attack = 25;

//Enemy Health set in their own create events

starting_state_ = noone;
state_ = starting_state_;

enum enemy {
	hit 	
}
