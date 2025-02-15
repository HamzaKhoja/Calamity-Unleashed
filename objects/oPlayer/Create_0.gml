state = playerStateFree;
stateAttack = attackSlash;

prevState = state;
animationEndScript = -1;

image_speed = 0;
xspeed = 0;
yspeed = 0;

z = 0;
localFrame = 0;
walkSpeed = 2;
dashSpeed = 10;
speedHook = 6;
speedBonk = 1.5;


distanceBonk = 40;
distanceBonkH = 12;
distanceHook = 150;
dashDistance = 100;

spriteIdle = playerIdle;
spriteWalk = playerWalk;
spriteRun = playerRun;
spriteDash = playerDash;
if (variable_global_exists("ruinSword")) && (!global.ruinSword)
	spriteAttack = playerAttack1;
else spriteAttack = playerAttack1Ruin;

hook = 0;
hookX = 0;
hookY = 0;
hookSize = sprite_get_width(HookRope);


hitByAttack = -1;
invulnerable = 0;
flash = 0;
flashShader = shRedFlash;
bossMonologue = true;

collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));

if (variable_global_exists("targetX") && global.targetX != -1){
	x = global.targetX;	
	y = global.targetY;
	direction = global.targetDirection;
}

if (variable_global_exists("iLifted")) && (global.iLifted != noone) {
	spriteIdle = playerCarryIdle;
	spriteWalk = playerCarryWalk;
	sprite_index = spriteIdle;
}


