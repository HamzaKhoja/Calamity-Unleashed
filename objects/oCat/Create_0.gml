// Inherit the parent event
event_inherited();

state = ENEMY_STATE.WANDER;
sprMove = CatWalk;
sprCatLaying = CatLaying;
sprCatLay = CatLay;
//sprCatSit = CatSit;

localFrame = 0;

enemyScript[ENEMY_STATE.WANDER] = catWander;
enemyScript[ENEMY_STATE.CHASE] =  -1; // Run
enemyScript[ENEMY_STATE.ATTACK] = -1; // IDK
enemyScript[ENEMY_STATE.HURT] = -1; // Sit
enemyScript[ENEMY_STATE.DIE] = catSit; // Sleep
enemyScript[ENEMY_STATE.WAIT] = catNap;
