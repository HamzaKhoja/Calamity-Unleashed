function playerStateAct(){
	
	playerAnimateSprite();
	
	if (animationEnd){
		state = playerStateFree;
		animationEnd = false;
		if (animationEndScript != -1){
			script_execute(animationEndScript);
			animationEndScript = -1;
		}
	}
}