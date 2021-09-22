/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("E"))) {
	if(character_count < string_length(text[page])) {
		character_count = string_length(text[page]);
	}
	else if(page+1 < array_length_1d(text)) {
		page += 1;
		character_count = 0;
	} else {
		instance_destroy();
		creator.alarm[1] = 1;
	}
}