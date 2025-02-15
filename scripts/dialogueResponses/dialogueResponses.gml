function dialogueResponses(arg1){
	
	switch(arg1) 
	{
		case 0: break;
		case 1: newTextBox("\nI suggest you watch your tone and choose your words carefully."); break;
		case 2: newTextBox("Welcome to our little community. Let me know if \nthere is anything I can help you with", 1, ["3: Sure thing", "0: Thank you"]); break;
		case 3: newTextBox("\nI'll be seeing you", 1); break;
		
		

		case 4: newTextBox("I'm looking for my cat, She's white with cream and black spots.\n Could you find her and bring her back to me?",1, ["6: Of course, I'll be on the lookout!","7: No, this task is beneath me."]); break;
		case 5: newTextBox("Hey c'mon don't be like that, she's white with cream and black spots.\n Could you find her and bring her back to me?",1,["6: Fine, I'll be on the lookout.","7: No, this task is beneath me."]); break;
		case 6: {
			newTextBox("Gee, thanks stranger!", 1);
			newTextBox("She likes to hang around the Sheriff's house, \nso I would start there if I were you.",1);
			global.questStatus[? "CatQuest"] = 1;
		}  break;
	
		case 7: newTextBox("Well, aren't you a ray of sunshine?", 1); break;

// Dark Merchant
		case 8: newTextBox("But be warned, my goods come at a high price, \nand not just in gold. Are you sure you're ready to pay the cost?",1); break;
		
// Old Bubba Dialogue
		case 9: newTextBox("\nJust tell me what you need, and I'll make sure you get \nthe biggest bang for your buck. Get it? Bang?", 1); break;
		case 10: newTextBox("\nYea yea real funny, never heard that one before.", 1); break;
		
// Finn dialogue
		case 11: newTextBox("Could you help me find my buddy Jake? \nHe's a magic dog.",1); global.questStatus[? "JakeQuest"] = 1; break;
		case 12: newTextBox("Hey that's cool, I was just \ngonna ask if you've seen Jake.",1); global.questStatus[? "JakeQuest"] = 1; break;
		
		
// Gravedigger Dialogue
		case 13: {
			newTextBox("\nThat place is infested with monsters, and I've seen \nmany adventurers who never came back."); 
			newTextBox("I'll tell you what,\nif you manage to bring me back the key, \nthere's a reward in it for you.", 1);
			global.questStatus[? "KeyQuest"] = 1;
		} break;
		
		case 14: {
			newTextBox("\nIm 37.. and that place is infested with monsters, I've seen \nmany adventurers who never came back."); 
			newTextBox("I'll tell you what,\nif you manage to bring me back the key, \nthere's a reward in it for you.", 1);
			global.questStatus[? "KeyQuest"] = 1;
		} break;
		
// Buy Bow
		case 15: {
			if (global.playerItemUnlocked[ITEM.BOW1] != true) { 
				if (global.playerGreenGems >= 50) { 
					global.playerItemUnlocked[ITEM.BOW1] = true;
					global.playerGreenGems -= 50;
				}
				else newTextBox("\nYou cannot afford this item.", 1);
			}
			else newTextBox("\nYou have already unlocked this item!", 1);
			
		} break;

// Buy Wood Arrows
		case 16: {
			if (global.playerGreenGems >= 5) {
				global.playerAmmo[ITEM.BOW1] += 10; 
				global.playerGreenGems -= 5;
			}
			else newTextBox("\nYou cannot afford this item.", 1);
		} break;

// Enter Boss Fight
		case 17: {
			if (!instance_exists(oTransition) && oPlayer.state != playerStateDead){
				if (global.hasKey1) && (global.hasKey2) && (global.hasKey3){
					global.targetRoom = targetRoom;
					global.targetX = targetX;
					global.targetY = targetY;
					global.targetDirection = oPlayer.direction;
		
					// room_goto(targetRoom);
					with (oPlayer) state = playerStateTransition;
					roomTransition(TRANS_TYPE.FADE, targetRoom);
					instance_destroy();
				}	
				else newTextBox("\nYou do not possess the keys needed to enter", 2);
				oPlayer.y += 10;
			} break;
		}
		
		
// Don't enter 
		case 18: {
			oPlayer.y += 10;
		} break;


// Buy 5 Iron Arrows
		case 19: {
			if (global.playerSoulOrbs >= 3) {
				global.playerAmmo[ITEM.BOW2] += 5; 
				global.playerSoulOrbs -= 3;
			} 
			else newTextBox("\nYou cannot afford this item.", 1);
		} break;

// Buy Bomb
		case 20: {
			if (global.playerGreenGems >= 5) {
				global.playerAmmo[ITEM.BOMB]++; 
				global.playerGreenGems -= 5;
			} 
			else newTextBox("\nYou cannot afford this item.", 1);
		} break;
		
// Buy Dynamite
		case 21: {
			if (global.playerSoulOrbs >= 3) {
				global.playerAmmo[ITEM.DYNAMITE]++; 
				global.playerSoulOrbs -= 3;
			} 
			else newTextBox("\nYou cannot afford this item.", 1);
		} break;
		
		case 22: {
			collectHealthPotion();	
		} break;
		
		
		default: break;
	}
}



function speaking() {
	var boolean = audio_is_playing(d1) || audio_is_playing(d2) || audio_is_playing(d3) || audio_is_playing(d4) || audio_is_playing(d5)
				||audio_is_playing(d6) || audio_is_playing(d7) || audio_is_playing(d8) || audio_is_playing(d9) || audio_is_playing(d10)
				
	return boolean;
}



