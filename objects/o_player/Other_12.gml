/// @description Evade State
image_speed = 0.7;
//when the player is moving
if(o_input.right_ || o_input.left_ || o_input.down_ || o_input.up_){
	if animation_hit_frame(0) {
	audio_play_sound(a_evade, 5, false);
}
player_collider();
x += moveX*2;
y += moveY*2;
if animation_hit_frame(image_number - 1) {
	global.currently_rolling = false;
	state_ = player.move;
}

//When the player is not moving
}else{

if animation_hit_frame(0) {
	audio_play_sound(a_evade, 5, false);
}
set_movement(roll_direction_, roll_speed_);
move_movement_entity(false);

if animation_hit_frame(image_number - 1) {
	global.currently_rolling = false;
	state_ = player.move;
}
}