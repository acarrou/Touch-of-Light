/*if room = r_cave_1 {
	audio_play_sound(a_cave, 5, true);
}
if room  != r_cave_1 {
	audio_stop_sound(a_cave);
}
*/
audio_stop_all()

if(!audio_is_playing(a_cave)){
	audio_play_sound(a_cave, 5, true)
}