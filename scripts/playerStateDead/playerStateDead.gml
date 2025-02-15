function playerStateDead(){
	xspeed = 0;
	yspeed = 0;
	
	if (sprite_index != playerDead) && (sprite_index != playerDie){
		sprite_index = playerDie;
		image_index = 0;
		image_speed = 1;
	}
	
	if (image_index + image_speed > image_number)
	{
		if (sprite_index == playerDie)
		{
			image_speed = max(0, image_speed - 0.03);
			if (image_speed < 0.25)
			{
				image_index = 0;
				sprite_index = playerDead;
				image_speed = 1;
			}
		}
		else 
		{
			image_speed = 0;
			image_index = image_number - 1;
			global.targetX = -1;
			global.targetY = -1;
			
			roomTransition(TRANS_TYPE.SLIDE, rmStarting);
		}
	}
}