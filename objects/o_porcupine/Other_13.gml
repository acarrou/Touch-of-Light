/// @description Attack State
image_speed = 1;
if animation_hit_frame(8) {
	var _damage = 15;
	var _knockback = 4;
	var _life = 1;
	create_hitbox(s_porcupine_hitbox, x, y-8, 0, _life, [o_player], _damage, _knockback);
	audio_play_sound(a_porcupine_attack, 5, false);
}

if animation_hit_frame(image_number - 1) {
	state_ = porcupine.idle;
	sprite_index = s_skel_run;
	alarm[1] = 2*global.one_second
}