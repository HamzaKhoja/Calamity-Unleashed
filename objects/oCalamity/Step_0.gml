// Inherit the parent event
event_inherited();
if (!instance_exists(oText)) && (state != 0) && (state != ENEMY_STATE.DIE){
	if (!audio_is_playing(BossMusic)) audio_play_sound(BossMusic ,1, 0, 1);
	
	numEnemies = instance_number(oWalker) + instance_number(oStag) + instance_number(oVoidwing);
	if (numEnemies <= 5) {
		ran = irandom(500);
		show_debug_message(ran);
	
	
	
		if (ran == 1) {
			instance_create_depth(x-100, y-100, depth, oWalker);
			instance_create_depth(x+100, y-100, depth, oWalker);
			instance_create_depth(x-100, y+100, depth, oWalker);
			instance_create_depth(x+100, y+100, depth, oBehemoth);
		}
		else if (ran == 2) {
			instance_create_depth(x-100, y-100, depth, oVoidwing);
			instance_create_depth(x+100, y-100, depth, oVoidwing);
			instance_create_depth(x-100, y+100, depth, oWalker);
			instance_create_depth(x+100, y+100, depth, oWalker);
		}
		else if (ran == 3) {
			instance_create_depth(x-100, y-100, depth, oVoidwing);
			instance_create_depth(x+100, y-100, depth, oVoidwing);
			instance_create_depth(x-100, y+100, depth, oVoidwing);
			instance_create_depth(x+100, y+100, depth, oBehemoth);
		}
		else if (ran == 4) {
			instance_create_depth(x-100, y-100, depth, oStag);
			instance_create_depth(x+100, y-100, depth, oVoidwing);
			instance_create_depth(x-100, y+100, depth, oWalker);
			instance_create_depth(x+100, y+100, depth, oVoidwing);
		}
	}
}