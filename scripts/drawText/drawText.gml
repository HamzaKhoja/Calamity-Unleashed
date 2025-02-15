// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawText(_x, _y, str, font){
	draw_set_font(font);
	draw_set_color(c_black);
	draw_text(_x+1, _y+1, str);
	draw_text(_x+1, _y-1, str);
	draw_text(_x-1, _y+1, str);
	draw_text(_x-1, _y-1, str);
	
	draw_set_color(c_white);
	draw_text(_x, _y, str);
}