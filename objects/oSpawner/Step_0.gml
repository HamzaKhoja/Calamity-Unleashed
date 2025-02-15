if (!global.gamePaused){
	ran = irandom(500);
  
	if (ran == 0) {
		var numSpawn = irandom(5);
		for (var i = 0; i<numSpawn; i++){
			
			var xcord = x + choose (
								random_range(-50, -30),
								random_range(50, 30) );
							
			var ycord = y + choose (
								random_range(-50, -30),
								random_range(50, 30) );
							
			instance_create_depth(xcord, ycord, 1, oWalker);
			effect_create_above(ef_smokeup, xcord, ycord, 1, c_black);
			
		}
	}
}