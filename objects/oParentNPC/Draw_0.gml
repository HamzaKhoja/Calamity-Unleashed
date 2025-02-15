// Inherit the parent event
event_inherited();

if (distance_to_object(oPlayer) < 10){
	ypos = y - 45;
	draw_set_valign(fa_top);
	draw_set_halign(fa_center)
	draw_set_color(c_black);
	var str = sprite_get_name(object_get_sprite(object_index))
	draw_text(x-1, ypos - 1, str);
	draw_text(x-1, ypos + 1, str);
	draw_text(x+1, ypos - 1, str);
	draw_text(x+1, ypos + 1, str);
	draw_set_color(c_white);
	draw_text(x, ypos, str);
} 