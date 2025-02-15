function collectGreenGems(amount){
	audio_play_sound(sePickUpItem, 1, 0);
	global.playerGreenGems += amount;
}
function collectSoulOrb(){
	audio_play_sound(sePickUpItem, 1, 0);
	global.playerSoulOrbs++;
}

function collectAmmo(array){
	audio_play_sound(sePickUpItem, 1, 0);
	// array: [type, amount]
	global.playerAmmo[array[0]] += array[1];
}

function collectKey1(){
	audio_play_sound(sePickUpItem, 1, 0);
	newTextBox("\nNew Item: Key #1", 2);
	global.hasKey1 = true;	
}
function collectKey2(){
	audio_play_sound(sePickUpItem, 1, 0);
	newTextBox("\nNew Item: Key #2", 2);
	global.hasKey2 = true;	
}
function collectKey3(){
	audio_play_sound(sePickUpItem, 1, 0);
	newTextBox("\nNew Item: Key #3", 2);
	global.hasKey3 = true;	
}
	
function ruinSwordCollect(){
	audio_play_sound(sePickUpItem, 1, 0);
	newTextBox("\nWeapon Unlocked: Ruin", 2);
	with (oPlayer){
		spriteAttack = playerAttack1Ruin;
		global.ruinSword = true;
	}
	instance_create_depth(x, y-100, 1, oCalamityExit);
}

function collectHeart(){
	audio_play_sound(sePickUpItem, 1, 0);
	global.playerHealthMax++;
	global.playerHealth++;
}

function collectHealthPotion(){
	audio_play_sound(sePickUpItem, 1, 0);
	global.playerHealth++;	
}