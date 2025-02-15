// Inherit the parent event
event_inherited();

if (global.BoulderDestroyed){	
	instance_destroy();
	instance_destroy(oFragBoulder);
}
