// Pause Game

if (keyboard_check_pressed(vk_escape)) && (!instance_exists(oTransition)) && (oUI.visible)
{
	//if (global.gamePaused){ global.gamePaused = false;}
	//else if (!global.gamePaused){ global.gamePaused = true;}
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused){
		with (all) {
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	
	else {
		with (all)
		image_speed = gamePausedImageSpeed;
		//image_speed = 1;
	}
}

for (var i=0; i<array_length(Music); i++){
	
	if (audio_sound_get_gain(Music[i]) <= 0) {
		audio_stop_sound(Music[i]);
	}
	
}