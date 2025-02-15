if (!instance_exists(oText)) && (state != ENEMY_STATE.DIE){
	hurtPlayer(point_direction(x, y, oPlayer.x, oPlayer.y), enemyForceTouch, enemyDamageTouch);
	state = ENEMY_STATE.CHASE;
}