cursor_sprite = s_crosshair
//audio_play_sound(a_bling, 3, false);
window_set_cursor(cr_none);
//room_goto(r_title);
//room_goto(r_carrout); //Play this once game is finished
room_goto(r_title);
//instance_create_layer(0,0, "Instances", daycycle);
instance_create_layer(0,0, "Instances", o_fullscreen);

//room_goto(r_carrout); //Play this once game is finished