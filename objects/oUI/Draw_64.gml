// Draw Health
var playerHealth = global.playerHealth;
var playerHealthMax = global.playerHealthMax;
var playerHealthFrac = frac(playerHealth);
playerHealth -= playerHealthFrac;

for (var i = 1; i <= playerHealthMax; i++)
{
	var imageIndex = ( i > playerHealth);
	if (i == playerHealth + 1){
		imageIndex += (playerHealthFrac > 0);
		imageIndex += (playerHealthFrac > 0.25);
		imageIndex += (playerHealthFrac > 0.5);
	}
	draw_sprite(Heart, imageIndex, 32 + ((i-1) * 18), 24);
	display_set_gui_size(640, 360);
}


// Draw Gems in Inv.

	// Gem Icon
var xx = 8;
var yy = 64;
draw_sprite(GreenGemUI, 0, xx, yy);

	// Gem Text
draw_set_color(c_black);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
xx += sprite_get_width(GreenGemUI) + 4;

var str = string(global.playerGreenGems);

	// Black Outline
draw_text(xx+1, yy, str);
draw_text(xx-1, yy, str);
draw_text(xx, yy+1, str);
draw_text(xx, yy-1, str);

	// White Text
draw_set_color(c_white);
draw_text(xx, yy, str);


// Draw Soul Orbs

	// Soul Orb Icon
var xx = 8;
yy += 18;
draw_sprite(SoulOrbUI, 0, xx, yy);

	// Soul Orb Text
draw_set_color(c_black);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
xx += sprite_get_width(SoulOrbUI) + 4;

var str = string(global.playerSoulOrbs);

	// Black Outline
draw_text(xx+1, yy, str);
draw_text(xx-1, yy, str);
draw_text(xx, yy+1, str);
draw_text(xx, yy-1, str);

	// White Text
draw_set_color(c_white);
draw_text(xx, yy, str);



// Draw Item Held

xx = 8;
yy += 20;

draw_sprite(ItemUIBox, 0, xx, yy);
if (global.playerHasAnyItems)
{
	draw_sprite(sItemUI, global.playerEquipped, xx, yy);
	if (global.playerAmmo[global.playerEquipped] != -1)
	{
		draw_set_font(fAmmo);
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_set_color(c_white);
		
		draw_text(
			xx + sprite_get_width(ItemUIBox) + 1,
			yy + sprite_get_height(ItemUIBox) + 1,
			string(global.playerAmmo[global.playerEquipped])
		);
	}
}

// Ongoing Quests
//var size = ds_map_size(global.questStatus);
var map = global.questStatus;
var numQuests = 0;
for (var k = ds_map_find_first(map); !is_undefined(k); k = ds_map_find_next(map, k)) {
	
	var v = map[? k];
	
	if (v == 1){
		numQuests++;
		var yPos =  10 + (32*numQuests);
		drawQuest(yPos, k);
	}
}



// Pause Menu
if (global.gamePaused)
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,  RESOLUTION_W, RESOLUTION_H, false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(fText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(RESOLUTION_W * 0.5,RESOLUTION_H * 0.5,"  Game Paused  ");
	for(var i = 0; i < array_length(pauseOption); i++)
	{
		var print = "";
		if (i == pauseOptionSelected)
		{
			print +="> " + pauseOption[i] + " <"
		}
		else
		{
			print += pauseOption[i];
			draw_set_alpha(0.7)
		}
		draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 +18 + (i *  12) , print)
		draw_set_alpha(1.0)
	}	
}