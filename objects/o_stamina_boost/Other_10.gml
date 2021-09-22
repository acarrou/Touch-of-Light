instance_destroy();
if (global.player_max_stamina < 300){
global.player_max_stamina += 25;
global.stamina += 25;
}

audio_play_sound(a_collect_item, 2, false);