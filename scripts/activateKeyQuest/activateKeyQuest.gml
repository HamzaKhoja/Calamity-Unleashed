function activateKeyQuest(){
	var hasKey = global.hasKey3;
	switch (global.questStatus[? "KeyQuest"])
	{
		
		
		// Quest hasn't started yet
		case 0:
		{
			// Player brought the key without being asked yet
			if (hasKey)
			{
				// Quest Completed
				newTextBox("Oh, you found the key in the cave! Perhaps it will be useful \nto you in the future. As a reward I will allow you to keep it.", 1, ["0:Gee.. Thanks."]);
				global.questStatus[? "KeyQuest"] = 2;
				// playerThrowObject();
			}
			else
			{
				// Ask Player to find the key
				newTextBox("Ah, you're looking to explore the cave, are you? \nWell, I'll tell you right now, it's not for the faint of heart.",1, 
				["13:What do you mean?", "14:Yea whatever old man."]);				
			}
		} break;
		
		
		
		// Player was asked to find the key, not returned it yet
		case 1:
		{
			if (hasKey)
			{
				// Quest Completed
				newTextBox("Well done boy, you found the key. Perhaps it will be useful \nto you in the future. As a reward I will allow you to keep it.", 1, ["0: Gee.. Thanks."]);
				global.questStatus[? "KeyQuest"] = 2;
				playerThrowObject();
				
			}
			else
			{
				// Remind player
				newTextBox("\nMy father told me of the key hidden in the cave, \nall those who try and retrieve it never return...",1);
			}
			
		}break;
		
		
		
		// Quest already completed
		case 2:
		{
			if (hasKey) newTextBox("\nPerhaps there is still more to explore down in the cave.",1);
			else newTextBox("",1);
		} break;
	}
}