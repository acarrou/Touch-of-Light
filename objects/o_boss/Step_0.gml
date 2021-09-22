depth = -y;
if health_ <= 0 && state_ != boss.hit {
	add_to_destroyed_list(id);
	instance_destroy();
	
audio_stop_all();
audio_play_sound(a_positive, 6, true);
	
	create_animation_effect(s_boss_death_effect, x, y-8, .6, true);
if chance(100) {
	var _item = (o_mega_gem_pickup);
	var _item1 = (o_stamina_boost);
	var _item2 = (o_health_boost);
	instance_create_layer(x, y-8, "Instances", _item);
	instance_create_layer(x-15, y-8, "Instances", _item1);
	instance_create_layer(x+15, y-8, "Instances", _item2);
}
}

if state_ !=noone {
	event_user(state_);	
}
