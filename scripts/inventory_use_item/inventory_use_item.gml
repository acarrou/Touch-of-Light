///@arg input
///@arg item
///@arg action
function inventory_use_item(argument0, argument1, argument2) {
	with(Inventory){
	if(Inventory.show_inventory)exit;
	}
	var _input = argument0;
	var _item = argument1;
	var _action = argument2;
	if _input {
		var _target_x = x + lengthdir_x(8, direction_facing_*90);
		var _target_y = y + lengthdir_y(8, direction_facing_*90);
		var _interactable = instance_place(_target_x, _target_y, o_interactable);
		if _interactable and _interactable.activatable_ {
			with _interactable {
				event_user(interactable.activate);
			}
		} else if instance_exists(_item) and global.stamina >= _item.cost_ {
			if _item.show_amount_ {
				if _item.amount_ > 0 {
					_item.amount_ -= 1;
				} else {
				exit;
				}
			}
			action_ = _action;
			state_ = _item.action_;
			global.stamina = max(0, global.stamina- _item.cost_);
			alarm[1] = global.one_second;
			image_index = 0;
		
		//Checking to see if there are any weapons not being used or if the player if out of stamina
		}else if (global.item[0] == noone && global.action_one_pressed_){
			global.no_item = true;
			audio_play_sound(a_huh, 1, false);
			alarm[3] = 60;
		}else if (global.item[1] == noone && global.action_two_pressed_){
			global.no_item = true;
			audio_play_sound(a_huh, 1, false);
			alarm[3] = 60;
		}else{
		global.stamina_out = true;
		audio_play_sound(a_no_stamina, 1, false);
		alarm[3] = 60;
		}
		
	}


}
