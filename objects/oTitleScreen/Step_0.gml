

if (!keyPressed) {titleVisible = min(1, titleVisible + 0.01);}
else 
{
	titleVisible = max(0, titleVisible - 0.01);	
	slotsVisible = min(1, slotsVisible + 0.01);	
}


// Navigate Save slots

if ( keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W")))
{
	if (rightSide) {
		slotSelected -= 1;
		if (slotSelected < 0) slotSelected = 2;
	}
	else {
		optionSelected -= 1;
		if (optionSelected < 0) optionSelected = 2;
	}
}
if ( keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(ord("S")))
{
	if (rightSide) {
		slotSelected += 1;
		if (slotSelected > 2) slotSelected = 0;
	}
	else {
		optionSelected += 1;
		if (optionSelected > 2) optionSelected = 0;
	}
}

if ( keyboard_check_pressed(vk_left)) || (keyboard_check_pressed(ord("A")))
{
	optionSelected = 0;
	slotSelected = -1;
	rightSide = false
}
if ( keyboard_check_pressed(vk_right)) || (keyboard_check_pressed(ord("D")))
{
	slotSelected = 0;
	optionSelected = -1;
	rightSide = true;
}


if (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(vk_space)) && (keyPressed) && (!loadingStarted)
{
	if (optionSelected = -1) {
		global.gameSaveSlot = slotSelected;
		if (!loadGame(global.gameSaveSlot)) roomTransition(TRANS_TYPE.SLIDE, rmStarting);
		loadingStarted = true;
	}
	else {
		if (optionSelected = 0) {
			roomTransition(TRANS_TYPE.SLIDE, rmSettings);
		}
		else {room_goto(rmTavern);	}
	}
}


if (keyboard_check_pressed(vk_anykey)) keyPressed = true;	