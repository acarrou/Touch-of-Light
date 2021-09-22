/// @description Insert description here
// You can write your code in this editor
event_inherited();



//This dialogue number is very important...

answer = noone
myPortrait			= spr_portrait_examplechar;
myVoice				= snd_voice1;
myName				= "Blue";

//myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;

//if(!file_exists(global.file_name))
//exit;
//ds_map_destroy(global.save_data);
//ds_map_secure_load(global.file_name);

 //global.save_data = ds_map_secure_load(global.file_name);
 
 global.loadMap = ds_map_secure_load(global.file_name);
 var map = global.loadMap;


if (file_exists(global.file_name)&& !is_undefined(ds_map_find_value(map,"choice_variable"))){
//choice_variable = global.NPC1;
choice_variable = map[? "choice_variable"];
//ds_map_destroy(map);
}
else{
choice_variable = -1;
}

