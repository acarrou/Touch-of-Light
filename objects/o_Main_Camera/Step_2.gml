/// @description camera moving



//window_center(); delete if not needed, lets the window always stick to the middle
camera_set_view_size(view_camera[0], camera_Show_Width, camera_Show_Height);  // Zoom, change width and height of camera


// moving of the camera according to the target set and the level border
if (instance_exists(target)) { 
	
	// get x and y position of target and don't show anything outside of room
	var cameraX =  clamp  (target.x - camera_Show_Width/2,  0, room_width  - camera_Show_Width   );
	var cameraY =  clamp  (target.y - camera_Show_Height/2, 0, room_height - camera_Show_Height );	
	
	
	// get current value of camera to get smooth value between old position and target position
	var current_x = camera_get_view_x (view_camera[0]);
	var current_y = camera_get_view_y (view_camera[0]);	
	
	var SmoothScrollSpeed = 0.1;  // 

	// Smooth scrollspeed and set new positon of camera

	
	if(global.shoot){
		//shot aiming outside the camera
		/*
			cx = lerp( o_player.x-8, mouse_x, 0.1) - (camera_Show_Width/2);
			cy = lerp( o_player.y-8, mouse_y, 0.1) - (camera_Show_Height/2);
			camera_set_view_pos(view_camera[0], cx, cy);
			
				if(alarm[1]== -1){
				alarm[1] = 2;
				}
				*/
	}else if(global.shake){
// For whenn the player gets hit
	var ran_x = random_range(-5,5);
	var ran_y = random_range(-5,5);
	camera_set_view_pos(view_camera[0],current_x+ran_x,current_y+ran_y);
	//Shake alarm
	if(alarm[2]== -1){
	alarm[2] = 2;
	}
}else{
			//Main Camera Mode
			camera_set_view_pos(view_camera[0], 
			lerp( current_x, cameraX, SmoothScrollSpeed),
			lerp( current_y, cameraY, SmoothScrollSpeed));	
	}
			
	}
	
	global.paused_sprite_scale_ = display_get_gui_width()/ view_wport[0];
/// Zoom	with mouse scroll up and down, change here for other input

/*
    // zoom out
	if ( mouse_wheel_down() and zoomMax_Width/2 > (camera_Show_Width + Aspect_Ratio_Width)  ) {
	camera_Show_Width  += Aspect_Ratio_Width;
    camera_Show_Height += Aspect_Ratio_Height ;

	}
	
    // zoom in
	if ( mouse_wheel_up()  and zoomMin_Width < (camera_Show_Width - Aspect_Ratio_Width)  ) {
	camera_Show_Width  -= Aspect_Ratio_Width;
    camera_Show_Height -= Aspect_Ratio_Height;

	}	
	




