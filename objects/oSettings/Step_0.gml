if (keyboard_check_pressed(vk_escape)) roomTransition(TRANS_TYPE.SLIDE, rmTitle);


// Navigate slots

if ( ( keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W"))) ) && (!setKey)
{
		optionSelected -= 1;
		if (optionSelected < 0) optionSelected = optionsLength-1;
}

if ( ( keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(ord("S"))) ) && (!setKey)
{
		optionSelected += 1;
		if (optionSelected > optionsLength-1) optionSelected = 0;
}

/*
if (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(vk_space))
{

	while (!keyboard_key) || (keyboard_key == vk_space) {
		// Wait for keyboard input
	}
	options[optionSelected] = keyboard_key;

}
show_debug_message(ord(keyboard_key))