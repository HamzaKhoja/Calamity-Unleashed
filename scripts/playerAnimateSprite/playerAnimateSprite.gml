function playerAnimateSprite(){

	var totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + (CARDINAL_DIR * totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	// if animation would loop on next game step
	if (localFrame >= totalFrames){
		animationEnd = true;
		localFrame -= totalFrames;
		//if (sprite_index == playerWalk) audio_play_sound(Meow1, 1, 0);
	} 
	else animationEnd = false;
	if (sprite_index == playerDash){
		i = 10;
	}
	
}