// Inherit the parent event
event_inherited();
frames = sprite_get_number(Bush);
image_index = irandom_range(0,frames);
image_speed = 0;	

if (global.hasKey2) {
	entityDropList = choose(
		[oGemGreen],
		[oGemGreen],
		[oGemGreen, oGemGreen],
		[oGemGreen, oGemGreen],
		[oArrow1Drop],
		[oArrow1Drop, oGemGreen],
		-1, -1, -1, -1, -1, -1, -1 
	);
}
else entityDropList = [oKey2];