/*
audio_stop_all();

if(audio_is_playing(a_rock_boss_track)){
	exit;
}

if room = r_boss_room_cave {
	audio_play_sound(a_rock_boss_track, 5, true);
}
if room  != r_boss_room_cave {
	audio_stop_sound(a_rock_boss_track);
}

if (!instance_exists(o_boss)){
audio_stop_all();
audio_play_sound(a_positive, 6, true);
}