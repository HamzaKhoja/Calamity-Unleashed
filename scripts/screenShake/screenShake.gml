function screenShake(mag, len){
	with (global.iCamera){
		if (argument0 > shakeRemain){
			shakeMagnitude = mag;
			shakeRemain = shakeMagnitude;
			shakeLength = len;
		}
	}
}