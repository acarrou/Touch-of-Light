///mouse_direction
function mouse_direction() {
	x = o_player.x;
	y = o_player.y;

	if(global.action_one_ || global.action_two_){
	direction = point_direction(x,y,mouse_x,mouse_y);
	if (direction >= 225 && direction <= 315){
		direction_facing_ = dir.down;
	}else if (direction >= 45 && direction <= 135){
		direction_facing_ = dir.up;
	}else if (direction >= 135 && direction <= 225){
		direction_facing_ = dir.left;
	}else if (direction >= 315 && direction <= 360 || direction >= 0 && direction <= 45){
		direction_facing_ = dir.right;
	}
	}


}
