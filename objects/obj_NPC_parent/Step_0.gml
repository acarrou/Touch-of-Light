var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

if(place_meeting(x,y, o_player)) {
	if (keyboard_check_pressed(ord("E"))) {
		if (my_textbox == noone) {
		my_textbox = instance_create_layer(vx+70,vy+115, "Text", o_textbox);
		my_textbox.text = my_text;
		my_textbox.creator = self;
		my_textbox.name = my_name;
		}
	}
} else {
	if(my_textbox != noone) {
		instance_destroy(my_textbox);
		my_textbox = noone;
		draw_set_font(global.font);
	}
}

// try using the instance_deactivate function to pause the game when talking to an NPC