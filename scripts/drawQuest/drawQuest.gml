function drawQuest(yPos, k){
	
	var str, img;
	
	if (k == "CatQuest"){ str = "Find Velma's Cat"; img = CatQuestIcon}
	else if (k == "JakeQuest"){ str = "Find Jake"; img = JakeQuestIcon}
	else if (k == "KeyQuest"){ str = "Retrieve the Key"; img = KeyQuestIcon}
	
	draw_set_font(fText);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	
	NineSliceBoxStretched(textBoxBG, RESOLUTION_W - 100, yPos, RESOLUTION_W + 5, yPos + 30, 0);
	draw_sprite(img, 0, RESOLUTION_W - 90 - (sprite_get_width(img)/2), yPos + (sprite_get_height(img)/2));
	drawText(RESOLUTION_W - 95, yPos + 5, str, fText);
}