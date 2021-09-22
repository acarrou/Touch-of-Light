
/// @description 
//Player collision
//var xDist = abs(x - o_player.x);

if (!touched && place_meeting(x, y, o_player)){
	
	touched = true;
	playerY = o_player.y;
	
	image_speed = 1;
	//Sound
	//audio_play_sound(sndDoor, 1, false);
}
if (touched){
	room_goto(targetRoom);
	o_player.y = playerY + o_player.max_speed_;
	
	//Reset
	image_speed = 0;
	image_index = 0;
	touched = false;
	//saving_game();
}
