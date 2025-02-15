if (type == TRANS_TYPE.SLIDE)
{
	draw_set_color(c_black);
	draw_rectangle(0, 0		, width,		  percent * halfHeight, false);
	draw_rectangle(0, height, width, height - percent * halfHeight, false);
	
}

if (type == TRANS_TYPE.FADE)
{
	draw_set_alpha(percent);
	draw_set_color(c_black);
	draw_rectangle(0, 0, width, height, false);
	draw_set_alpha(1);
	
}