flash = max(0, flash -  0.05);
fric = 0.05;
if (z == 0) fric = 0.10;


// Magnet Effect
if (instance_exists(oPlayer)){
	var px = oPlayer.x;
	var py = oPlayer.y;
	var dist = point_distance(x, y, px, py);
	if (dist < 32) {
		spd += 0.25;
		direction = point_direction(x, y, px, py);
		spd = min(spd, 3); // Speed Cap
		fric = 0;
		if (dist < 2) {
			if (collectScriptArg != -1) {
				script_execute(collectScript, collectScriptArg);
			} 
			else {
				if (collectScript != -1) script_execute(collectScript);
			}
			instance_destroy();
		}
	}
}

// Bounce
if (bounceCount != 0)
{
	bounce += (pi * bounceSpeed)
	if (bounce > pi){
		bounce -= pi;
		bounceHeight *= 0.6;
		bounceCount--;
	}
	z = abs(sin(bounce)) * bounceHeight;
	
	
}
else z = 0;



x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);

spd = max(spd - fric, 0);
depth = -bbox_bottom;