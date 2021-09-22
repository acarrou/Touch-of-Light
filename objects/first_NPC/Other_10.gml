/// @description Insert description here
// You can write your code in this editor
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Hello I'm Rob please to meet you!";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= "I'm happy to tell you I'm here to help you...";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= ["1. Thats cool", "2. Whatever man..."];
		myTypes[i]		= 1;
		myNextLine[i]	= [3,4];
		myScripts[i]	= [[create_instance_layer, 170,120,"Instances",obj_emote], [create_instance_layer, 170,120,"Instances",o_player]];
		myScripts[i]	= [[change_variable_NPC1, id, "choice_variable","good"], [change_variable_NPC1, id, "choice_variable", "bad"]];
		mySpeaker[i]	= o_player;
		
	
		
	

		
		//Line 3
		i++;
		myText[i]		= "I know right?!";
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		myNextLine[i]	= -1;
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Wow that was rude!";
		myTextSpeed[i]	= [1,1, 6,0.3, 10,1];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		mySpeaker[i]	= id;
		
		#endregion
	break;
	
	case "bad":
	#region If you chose bad
		var i = 0;
		//Line 0
		myText[i]		= "You're a real jerk!";
		myTextSpeed[i]	= [1, 0.3];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		mySpeaker[i]	= id;
		myTextCol[i]	= [15,c_red];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable = -1;
	#endregion
	
	break;
	
	case "good":
	#region If you chose good
		var i = 0;
		//Line 0
		myText[i]		= "Hey there friend!!!";
		myTextSpeed[i]	= [1, 0.5];
		myEmotion[i]	= 1;
		myEmote[i]		= 1;
		mySpeaker[i]	= id;
		myTextCol[i]	= [11,c_green];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}