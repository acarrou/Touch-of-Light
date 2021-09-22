/*
audio_stop_all();

if(audio_is_playing(a_boss_music)){
	exit;
}

if room  != r_boss_room {
	audio_stop_sound(a_boss_music);
}

if room = r_boss_room {
	audio_play_sound(a_boss_music, 5, true);
}


if (!instance_exists(o_boss)){
audio_stop_all();
audio_play_sound(a_positive, 6, true);
}