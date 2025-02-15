function activateCatQuest(){
	var hasCat = (global.iLifted != noone) && (global.iLifted.object_index == oCat);
	switch (global.questStatus[? "CatQuest"])
	{
		
		// Quest hasn't started yet
		case 0:
		{
			// Player brought the cat without being asked yet
			if (hasCat)
			{
				// Quest Completed
				newTextBox("Wow! You found my cat, I've been \nlooking everywhere for her!\nOh thank you so much stranger!", 1);
				newTextBox("She's always been a curious little thing, and she loves\n to wander around the neighborhood. I try to keep an eye on her,\n but sometimes she's just too quick for me.", 1);
				newTextBox("\nI found this key while I was playing earlier, it might be useful to you!", 1);
				global.questStatus[? "CatQuest"] = 2;
				playerThrowObject();
				dropItems(x, y - 50, [oKey1]);
			}
			else
			{
				// Ask Player to find Cat
				newTextBox("Hello there, you look new, I'm Velma.", 1, 
				["4:Hello there Velma","5: Out of my way brat."]);				
			}
		} break;
		
		
		
		// Player was asked to find Cat, not returned it yet
		case 1:
		{
			if (hasCat)
			{
				// Quest Completed
				newTextBox("Wow! You Thank you so much for finding my cat!", 1);
				newTextBox("She's always been a curious little thing, and she loves\n to wander around the neighborhood. I try to keep an eye on her,\n but sometimes she's just too quick for me.", 1);
				newTextBox("\nI found this key while I was playing earlier, it might be useful to you!", 1);
				global.questStatus[? "CatQuest"] = 2;
				playerThrowObject();
				dropItems(x, y - 50, [oKey1]);
			}
			else
			{
				// Remind player
				newTextBox("Have you found my cat? \nShe likes to hang around near the Sheriff's house.", 1);
				newTextBox("Oh gee, I hope she hasn't ran into \nany of those scary Shadow Monsters!", 1);
			}
			
		}break;
		
		
		
		// Quest already completed
		case 2:
		{
			
			if (hasCat) newTextBox("Aw, was she wondering around again? \nI told you she was a curious thing.", 1);
			else newTextBox("Thanks again for finding my Cat!", 1);
		} break;
	}
}