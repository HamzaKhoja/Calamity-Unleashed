// Inherit the parent event
event_inherited();

state = ENEMY_STATE.WANDER;
sprMove = VoidwingFly;
sprAttack = VoidwingFly;
sprHurt = VoidwingHurt;
sprDeath = VoidwingDie;


enemyScript[ENEMY_STATE.WANDER] =  voidwingWander;
enemyScript[ENEMY_STATE.CHASE] =  voidwingChase;
enemyScript[ENEMY_STATE.ATTACK] = -1;
enemyScript[ENEMY_STATE.HURT] = walkerHurt;
enemyScript[ENEMY_STATE.DIE] = walkerDeath;


// entityShadow = false;
enemyWanderDistance = 64;
enemyAgroRadius = 128;

entityDropList = choose(
	[oOrb],
	[oOrb, oArrow1Drop],
	[oArrow1Drop],
	[oNothing], [oNothing], [oNothing], [oNothing], [oNothing]
);

dropped = false;


image_xscale = 0.65;
image_yscale = 0.65;