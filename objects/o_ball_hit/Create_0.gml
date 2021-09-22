image_speed = 1;
depth = -y-20;
create_hitbox(s_bomb_hitbox, x, y-4, 0, 3, [o_grass, o_enemy, o_player,o_boss,o_plant,o_large_rock,o_bush,o_crystal], 50, 12);
audio_play_sound(a_fire_explosion, 7, false);

