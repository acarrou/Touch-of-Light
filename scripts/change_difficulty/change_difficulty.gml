///description change_difficulty
///@arg value
function change_difficulty(argument0) {

	var type = menu_option[page];

	if (type == 0){ //ENEMIES
		switch(argument0){
			case 0:
				//easy
				//global.max_health_enemy = 2;
				//global.max_health_boss = 10;
			break;
		
			case 1:
				//medium
				//global.max_health_enemy = 3;
				//global.max_health_boss = 15;
			break;
		
			case 2:
				//hard
				//global.max_health_enemy = 5;
				//global.max_health_boss = 25;
			break;
		}
	}




}
