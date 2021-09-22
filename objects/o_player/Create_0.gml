initialize_movement_entity(.5, 1, o_solid);
initialize_hurtbox_entity();
cursor_sprite = s_crosshair
image_speed = 0;
acceleration_ = 0.5;
max_speed_ = 2;
roll_speed_ = 3;
direction_facing_ = dir.right;
roll_direction_ = 0;
found_item_sprite_ = noone;
moveSpeed = 1.5;
regspd = 2;
dag_speed = round(regspd * ((sqrt(2)) / 2 ))
//moveDir = 0;

instance_create_layer(x,y, "Instances", Inventory);

//if the player is currently doing something like shooting his bow or doing another action
global.busy_action = false;

//if the player is currently rolling
global.currently_rolling = false;


// Variables
moveX = 0;
moveY = 0;

//instance_create_depth(x,y, 1, o_cursor);
instance_create_depth(x,y, 1, o_cursor_inner);
//instance_create_layer(0,0, "Instances", Inventory);

alarm[1] = global.one_second;

emitter = audio_emitter_create();

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit,
	ball

}

enum dir {
	right,
	up,
	left,
	down
}

enum action {
	one,
	two,
	roll
}

starting_state_ = player.move;
state_ = starting_state_;
action_ = noone;

// Sprite move lookup table
sprite_[player.move,dir.right] = s_player_run_right;
sprite_[player.move,dir.up] = s_player_run_up;
sprite_[player.move,dir.left] = s_player_run_left;
sprite_[player.move,dir.down] = s_player_run_down;

sprite_[player.sword,dir.right] = s_player_attack_right;
sprite_[player.sword,dir.up] = s_player_attack_up;
sprite_[player.sword,dir.left] = s_player_attack_left;
sprite_[player.sword,dir.down] = s_player_attack_down;

sprite_[player.evade,dir.right] = s_player_roll_right;
sprite_[player.evade,dir.up] = s_player_roll_up;
sprite_[player.evade,dir.left] = s_player_roll_left;
sprite_[player.evade,dir.down] = s_player_roll_down;

sprite_[player.hit,dir.right] = s_player_run_right;
sprite_[player.hit,dir.up] = s_player_run_up;
sprite_[player.hit,dir.left] = s_player_run_left;
sprite_[player.hit,dir.down] = s_player_run_down;

sprite_[player.bow,dir.right] = s_player_bow_right;
sprite_[player.bow,dir.up] = s_player_bow_up;
sprite_[player.bow,dir.left] = s_player_bow_left;
sprite_[player.bow,dir.down] = s_player_bow_down;

sprite_[player.ball,dir.right] = s_player_fireball_right;
sprite_[player.ball,dir.up] = s_player_fireball_up;
sprite_[player.ball,dir.left] = s_player_fireball_left;
sprite_[player.ball,dir.down] = s_player_fireball_down;

sprite_[player.found_item,dir.right] = s_player_found_item;
sprite_[player.found_item,dir.up] = s_player_found_item;
sprite_[player.found_item,dir.left] = s_player_found_item;
sprite_[player.found_item,dir.down] = s_player_found_item;

sprite_[player.bomb,dir.right] = s_player_run_right;
sprite_[player.bomb,dir.up] = s_player_run_up;
sprite_[player.bomb,dir.left] = s_player_run_left;
sprite_[player.bomb,dir.down] = s_player_run_down;

spd = 2;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= global.font;
myName				= "Bogart";

//myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
//myPortraitIdle		= spr_portrait_examplechar_idle;

