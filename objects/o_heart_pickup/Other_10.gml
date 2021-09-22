instance_destroy();
global.hp += 25;
if global.hp > global.player_max_health {
	global.hp = global.player_max_health;
}
audio_play_sound(a_collect_item, 2, false);