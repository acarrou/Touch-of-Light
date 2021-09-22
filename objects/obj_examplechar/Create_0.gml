


event_inherited(); //so it will inherit from par_speaker

//-------DIALOGUE STUFF
answer = noone
myPortrait			= spr_portrait_examplechar;
myVoice				= snd_voice1;
myName				= "Blue";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;


//-------OTHER


//choice_variable = -1;

//choice_variable = -1;	//the variable we change depending on the player's choice in dialogue

/*
var _save_data = ds_map_find_value(global.save_data,key);
if(!is_undefined(_save_data) && _save_data==true){

//choice_variable = global.answer;

}
else{
choice_variable = -1;
}
*/

v_spd = .25;
n_spd = .5;
r_spd = 1;
spd   = n_spd;

x_frame = 1;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spr_base = -1;
spr_torso = -1;
spr_legs = -1;
spr_hair = -1;
spr_feet = -1;
//spr_shadow = spr_character_shadow;

moveX = 0;
moveY = 0;

alarm[1] = 1;