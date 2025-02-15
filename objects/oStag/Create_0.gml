// Inherit the parent event
event_inherited();

state = ENEMY_STATE.WANDER;
sprMove = StagMove;
sprAttack = StagSlam;
sprHurt = StagHurt;
sprDeath = StagDeath;


enemyScript[ENEMY_STATE.WANDER] =  stagWander;
enemyScript[ENEMY_STATE.CHASE] =  stagChase;
enemyScript[ENEMY_STATE.ATTACK] = stagAttack;
enemyScript[ENEMY_STATE.HURT] = stagHurt;
enemyScript[ENEMY_STATE.DIE] = stagDeath;

enemySpeed = 0.15;
enemyAgroRadius = 480;
enemyAttackRadius = 16;
enemyHP = 30;
entityShadow = false;

entityDropList = choose(
	[oOrb],
	[oNothing], 
	[oNothing]
);

dropped = false;



image_xscale = 0.3;
image_yscale = 0.3;