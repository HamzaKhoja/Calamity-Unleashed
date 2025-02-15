// Inherit the parent event
event_inherited();

state = ENEMY_STATE.WANDER;
sprMove = WalkerRun;
sprAttack = WalkerAttack;
sprHurt = WalkerHurt;
sprDeath = WalkerDeath;


enemyScript[ENEMY_STATE.WANDER] =  walkerWander;
enemyScript[ENEMY_STATE.CHASE] =  walkerChase;
enemyScript[ENEMY_STATE.ATTACK] = walkerAttack;
enemyScript[ENEMY_STATE.HURT] = walkerHurt;
enemyScript[ENEMY_STATE.DIE] = walkerDeath;


entityShadow = false;
enemyWanderDistance = 64;
enemyAgroRadius = 128;

entityDropList = choose(
	[oOrb],
	[oNothing], [oNothing], [oNothing], [oNothing]
);

dropped = false;


image_xscale = 0.25;
image_yscale = 0.25;