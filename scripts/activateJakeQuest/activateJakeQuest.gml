function activateJakeQuest(){
	var hasJake = (global.iLifted != noone) && (global.iLifted.object_index == oJake);
	switch (global.questStatus[? "JakeQuest"])
	{
		
		
		// Quest hasn't started yet
		case 0:
		{
			// Player brought Jake without being asked yet
			if (hasJake)
			{
				// Quest Completed
				newTextBox("Oh Math! You found Jake! I've been \nlooking everywhere for you buddy!", 1);
				global.questStatus[? "JakeQuest"] = 2;
				playerThrowObject();
			}
			else
			{
				// Ask Player to find Jake
				newTextBox("Hey man, you look new, I'm Finn.",1, 
				["11:Hello Finn!","12: I'm a bit busy right now."]);				
			}
		} break;
		
		
		
		// Player was asked to find Jake, not returned him yet
		case 1:
		{
			if (hasJake)
			{
				// Quest Completed
				newTextBox("\nMath! Thank's for helping me find Jake!",1);
				global.questStatus[? "JakeQuest"] = 2;
				playerThrowObject();
				
			}
			else
			{
				// Remind player
				newTextBox("\nHave you seen Jake anywhere?",1);
			}
			
		}break;
		
		
		
		// Quest already completed
		case 2:
		{
			if (hasJake) newTextBox("Default.",1);
			else newTextBox("\nThanks again for helping me find Jake!",1);
		} break;
	}
}