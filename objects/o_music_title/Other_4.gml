/*
audio_stop_all();
audio_stop_sound(a_main_back);
if room = r_title {
audio_play_sound(a_titlescreen, 5, true);
}
if room  != r_title {
	audio_stop_sound(a_titlescreen);
}