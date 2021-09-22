global.busy_action = true;
//global.shoot = true;
/// @description Bow State
mouse_direction();
speed_ = 0;
var _bow_speed = 0.5
image_speed = _bow_speed
if animation_hit_frame(3) {
	image_speed = 0;
	var _released = false;
	if action_ == action.one {
		_released = !global.action_two_;
		_released = !global.action_one_;
	} else {
			_released = !global.action_two_;
	}
	if _released {
		image_speed = _bow_speed;
		audio_play_sound(a_bow, 2, false);
		
	/// Create the arrow
	instance_create_layer(x,y, "Instances", o_arrow);
	}
}
if animation_hit_frame(image_number -1) {
	state_ = player.move
	image_index = 0;
}

