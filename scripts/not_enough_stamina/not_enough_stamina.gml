function not_enough_stamina() {
	if(global.stamina <= 0 && global.action_roll_ ){
	global.stamina_out = true;
	audio_play_sound(a_no_stamina, 1, false);
	}


}
