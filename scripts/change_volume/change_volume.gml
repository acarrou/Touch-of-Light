///@description change_volume
///@arg value
function change_volume(argument0) {

	var type = menu_option[page];

	switch(type){
		case 0: audio_master_gain(argument0); break;
		case 1: audio_group_set_gain(audiogroup_sound_effects, argument0, 0); break;
		case 2: audio_group_set_gain(audiogroup_Music, argument0, 0); break;
	}




}
