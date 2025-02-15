// Inherit the parent event
event_inherited();

state = 0;
sprMove = CalamityWalk;
sprAttack = WalkToDrill;
sprHurt = CalamityHurt;
sprDeath = CalamityDeath;


enemyScript[ENEMY_STATE.WANDER] =  calamityWander;
enemyScript[ENEMY_STATE.CHASE] =  calamityChase;
enemyScript[ENEMY_STATE.ATTACK] = calamityAttack;
enemyScript[ENEMY_STATE.HURT] = calamityHurt;
enemyScript[ENEMY_STATE.DIE] = calamityDeath;
enemyScript[0] = calamityStill;

enemySpeed = 0.15;
enemyAgroRadius = 480;
enemyAttackRadius = 16;

entityShadow = false;
entityDropList = [oRuin];
dropped = false;
target = oPlayer;

// Health Bar
maxHP = enemyHP;
HPBar_width = 480;
HPBar_height = 8;
HPBar_x = 80;
HPBar_y = 32;