event_inherited();

state = ENEMY_STATE.IDLE;
xspeed = 0;
yspeed = 0;
xTo = xstart;
yTo = ystart;
dir = choose (0, 90, 180, 270);
timePassed = 0;
waitDuration = random(60);
wait = 0;
agroCheck = 0;
agroCheckDuration = 5;
stateTarget = state;
statePrevious = state;
stateWait = 0;
stateWaitDuration = 0;

//sprMove = WalkerRun;

enemyScript[ENEMY_STATE.IDLE] = -1;
enemyScript[ENEMY_STATE.WANDER] = -1;
enemyScript[ENEMY_STATE.CHASE] = -1;
enemyScript[ENEMY_STATE.ATTACK] = -1;
enemyScript[ENEMY_STATE.HURT] = -1;
enemyScript[ENEMY_STATE.DIE] = -1;
enemyScript[ENEMY_STATE.WAIT] = enemyWait;



