instance_destroy();
if (global.player_max_health < 300){
global.player_max_health += 25;
global.hp += 25;
}

audio_play_sound(a_collect_item, 2, false);