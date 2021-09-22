/// @description 
//Exit
if (place_meeting(x, y, o_player)){
	playerY = o_player.y;
	room_goto(_room);
	o_player.y = playerY + o_player.max_speed_;
	
	//Save doorID
	ini_open("temp.ini");

	ini_write_real("house", "doorID", doorID);

	ini_close();
}