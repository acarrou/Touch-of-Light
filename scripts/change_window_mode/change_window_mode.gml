///@description Change Window Mode
///@arg value
function change_window_mode(argument0) {

	switch(argument0){
		case 0: window_set_fullscreen(true); break;
		case 1: window_set_fullscreen(false); break;
	}


}
