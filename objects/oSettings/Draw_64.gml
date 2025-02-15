draw_sprite(SettingsUI, 0, 0, 0);

//drawText(200, 15, global.leftKey, fTextBig);



for (var option = 0; option <= optionsLength-1; option++)
{
	var ty = 16 + option * 42;
	var tx = 224;
	if (option >= 4) tx += 128;
	var img = 2;
	if(optionSelected == option)
	{
		img = 3;
	}
	NineSliceBoxStretched(textBoxBG, tx, ty, tx+100, ty+32, img);
		
	// Draw save data
	draw_set_font(fTextBig);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
		
	draw_text(tx + 48, ty + 20, options[option]);

		
	
}