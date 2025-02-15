// Draw Textbox

NineSliceBoxStretched(textBoxBG, x1, y1, x2, y2, background);

draw_set_font(fText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var print = string_copy(messageText, 1, TextProgress);

if (responses[0] != -1 && TextProgress >= string_length(messageText)) {
	for (var i = 0; i < array_length(responses); i++){
		print += "\n";
		if (i == responseSelected) print += "> ";
		print += responses[i];
		if (i == responseSelected) print += " <";
	}
}

draw_text((x1+x2)/2, y1+8, print);
draw_set_color(c_white);
draw_text((x1+x2)/2, y1+7, print);

