/// @description Found Item State
if alarm[2] <= 0 or global.action_one_pressed_ or global.action_two_pressed_ {
	state_ = starting_state_;
	found_item_sprite_ = noone;
	invincible_ = false;
}
