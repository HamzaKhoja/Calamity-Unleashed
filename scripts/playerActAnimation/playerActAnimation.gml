function playerActAnimation(sprite, endScript = -1)
{
	//Carry out an animation and optionally carry out a script when the animation ends
	state = playerStateAct;
	sprite_index = sprite;
	animationEndScript = endScript;
	localFrame = 0;
	image_index = 0;
	playerAnimateSprite();
}