function hurtPlayer(direc, force, damage){
	
	if (global.playerHealth > global.playerHealthMax) global.playerHealth = global.playerHealthMax;
	
	if (oPlayer.invulnerable <= 0) && (damage > 0)
	{
		global.playerHealth = max(0, global.playerHealth - damage);
		
		if (global.playerHealth > 0)
		{
			with (oPlayer)
			{
				audio_play_sound(seHurt, 1, 0);
				state = playerStateBonk;
				direction = direc - 180;
				moveDistanceRemaining = force;
				screenShake(2,10);
				flash = 0.7;
				invulnerable = 60;				
			}
		}
		
		else
		{
			//kill the player
			with (oPlayer) state = playerStateDead;
		}
	}
}