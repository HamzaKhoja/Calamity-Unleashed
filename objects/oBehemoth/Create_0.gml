// Inherit the parent event
event_inherited();

state = ENEMY_STATE.WANDER;
sprMove = BehemothMove;
sprAttack = BehemothMove;
sprHurt = BehemothHurt;
sprDeath = BehemothDeath;


enemyScript[ENEMY_STATE.WANDER] =  stagWander;
enemyScript[ENEMY_STATE.CHASE] =  stagChase;
enemyScript[ENEMY_STATE.ATTACK] = stagAttack;
enemyScript[ENEMY_STATE.HURT] = stagHurt;
enemyScript[ENEMY_STATE.DIE] = stagDeath;



enemyAttackRadius = 16;
enemyHP = 20;
entityShadow = false;

entityDropList = choose(
	[oOrb],
	[oNothing], 
	[oNothing]
);

dropped = false;

image_xscale = 1.4;
image_yscale = 1.4;
