if (titleVisible > 0)
{
	draw_sprite(title, 0, 0, -RESOLUTION_H + titleVisible*RESOLUTION_H);	
	
	draw_set_alpha(titleVisible * abs(sin(get_timer() * 0.000001 * pi)));
	draw_sprite(title, 1, 0, 0);
	draw_set_alpha(1);
}
if (slotsVisible > 0)
{
	draw_set_alpha(slotsVisible);
	for (var slot = 0; slot <= 2; slot++)
	{
		var ty = 32 + slot * 96;
		var tx = RESOLUTION_W/2;
		var img = 2;
		if(slotSelected == slot)
		{
			img = 3;
			//draw_sprite(menuPlayer, 1, 150,  RESOLUTION_H/2);
		}
		NineSliceBoxStretched(textBoxBG, tx, ty, RESOLUTION_W-20, ty+90, img);
		
		// Draw save data
		draw_set_font(fText);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
		
		if (slotData[slot] == -1) // Empty Slot
		{
			draw_text(tx + 8, ty + 8, "Start New Game");
		}
		else
		{
			draw_text(tx + 8, ty + 8, roomToArea(slotData[slot][? "Room"]));
			
			// Draw Health
			var playerHealth = slotData[slot][? "PlayerHealth"];
			var playerHealthMax = slotData[slot][? "MaxHealth"];
			var playerHealthFrac = frac(playerHealth);
			playerHealth -= playerHealthFrac;
			
			for (var i = 1; i <= playerHealthMax; i++)
			{
				var imageIndex = (i > playerHealth);
				if (i == playerHealth + 1){
					imageIndex += (playerHealthFrac  > 0);	
					imageIndex += (playerHealthFrac  > 0.25);	
					imageIndex += (playerHealthFrac  > 0.5);	
				}
				draw_sprite(Heart, imageIndex, tx + 20 + ((i-1) * 16), ty + 32);
			}
			
			// Draw Gems
			draw_sprite(GreenGemUI, 0, tx + 8, ty + 44);
			draw_text(tx + 24, ty + 44, slotData[slot][? "Gems"]);
			
		}
		
		
	}
	
	draw_set_alpha(1.0);
	draw_set_font(fTextBig);
	for(var i = 0; i < array_length(options); i++)
	{
		var print = "";
		if (i == optionSelected)
		{
			print +="> " + options[i] + " <"
		}
		else
		{
			print += options[i];
		}
		
		draw_set_halign(fa_middle);
		draw_set_valign(fa_center);
		
		draw_set_color(c_black);
		draw_text((RESOLUTION_W * 0.25) + 1, (RESOLUTION_H * 0.5 + (i *  28) ) + 1, print);
		draw_text((RESOLUTION_W * 0.25) + 1, (RESOLUTION_H * 0.5 + (i *  28) ) - 1, print);
		draw_text((RESOLUTION_W * 0.25) - 1, (RESOLUTION_H * 0.5 + (i *  28) ) + 1, print);
		draw_text((RESOLUTION_W * 0.25) - 1, (RESOLUTION_H * 0.5 + (i *  28) ) - 1, print);
		 
		draw_set_color(c_white);
		draw_text((RESOLUTION_W * 0.25), (RESOLUTION_H * 0.5 + (i * 28) ), print);
	}
}