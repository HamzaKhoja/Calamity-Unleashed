enum TRANS_TYPE
{
	SLIDE,
	FADE,
	PUSH,
	STAR,
	WIPE
}

width = RESOLUTION_W;
height = RESOLUTION_H;
halfHeight = (height * 0.5) + 50; // +30 to make transition more smooth, a few frame of black

percent = 0;
leading = OUT;

type = TRANS_TYPE.SLIDE