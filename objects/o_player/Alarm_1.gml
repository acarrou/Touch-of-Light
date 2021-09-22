/// @description Alarm for Stamina recharge
global.stamina_out = false;
global.stamina = min(global.stamina+25, global.player_max_stamina);
if global.stamina < global.player_max_stamina {
	alarm[1] = global.one_second;
}
