// Don't show UI in title screen
if (room == rmTitle) || (room == rmSettings) visible = false; else visible = true;

if (global.gamePaused)
{
	key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	pauseOptionSelected += (key_down - key_up);
	if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0;
	if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) -1; 
	
	key_activate = keyboard_check_pressed(vk_space);
	if (key_activate)
	{
		switch (pauseOptionSelected)
		{
			case 0: //Continue
			{
				global.gamePaused = false;
				with (all)
				{
					//gamePausedImageSpeed = image_speed;
					//image_speed = 0;
					image_speed = gamePausedImageSpeed;
				}
			}break;
			
			case 1: //Save and Quit
			{
				with (oGame) instance_destroy();
				saveGame();
				game_restart();				
			}break;
			
			case 2:
			{
				saveGame();
				game_end();
				//goto main menu
			}break;
			
		}
	}
}