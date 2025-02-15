// Inherit the parent event
event_inherited();

entityDropList = choose(
	[oArrow2Drop, oBombDrop],
	[oArrow2Drop, oBombDrop],
	[oArrow2Drop, oArrow2Drop],
	[oHealthPotion, oBombDrop],
	[oHealthPotion, oBombDrop],
	[oGemGreen, oGemGreen, oGemGreen],
	-1, -1, -1, -1, -1,
);