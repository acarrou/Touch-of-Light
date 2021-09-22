event_inherited(); //so it will inherit from par_speaker

if (instance_exists(obj_textbox)){
	instance_deactivate_object(o_enemy);
	instance_deactivate_object(obj_inv_controller);
	instance_deactivate_object(obj_inv_panel_toolbar);
}else{
	instance_activate_object(o_enemy);
	instance_activate_object(obj_inv_controller);
	instance_activate_object(obj_inv_panel_toolbar);
}


//Setting the NPCs depth so that the player is able to go through the NPC
depth = -y-20 

//basically if the player is in the range the moving will stop...
if (distance_to_object( o_player ) <= 15)
exit; 
//------------COLLISONS
//Horizontal
if(moveX != 0) {
	if(place_meeting(x+moveX, y, o_solid)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, o_solid)){ x += sign(moveX); }
			else { break; }
		}
		moveX = 0;
	}
}
//Vertical
if(moveY != 0) {
	if(place_meeting(x, y+moveY, o_solid)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), o_solid)){ y += sign(moveY); }
			else { break; }
		}
		moveY = 0;
	}
}
//---------APPLY MOVEMENT
x += moveX;
y += moveY;