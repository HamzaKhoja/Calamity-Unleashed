// Inherit the parent event
event_inherited();

entityDropList = choose(
	[oHeart],
	[oHeart, oDynamiteDrop],
	[oDynamiteDrop, oDynamiteDrop, oHeart],
	[oDynamiteDrop, oArrow2Drop, oArrow2Drop],
	-1
);