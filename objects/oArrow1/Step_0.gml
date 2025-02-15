// Hit Stuff
var entity = instance_place(x, y, oParentEntity);
var brk = false;

if (entity != noone)
{
	with (entity) {
		if (object_is_ancestor(object_index, oParentEnemy)) && (object_get_name(object_index) != "oCat") && (object_get_name(object_index) != "oCatOthers") && (object_get_name(object_index) != "oCalamity"){
			hurtEnemy(id, ARROW_DAMAGE_1, other.id, 5);	
			brk = true;
		}
		else {
			if (entityHitScript != -1) {
				script_execute(entityHitScript);
				brk = true;
			}
		}
	}
	
	if (brk) { instance_destroy(); audio_play_sound(seArrow, 1, 0); }

}

// Destroy if leaves cam bounds
var cam = view_camera[0];
var camX = camera_get_view_x(cam);
var camY = camera_get_view_y(cam);
if ( !point_in_rectangle( x, y, camX, camY, camX + camera_get_view_width(cam), camY + camera_get_view_height(cam))) {
	instance_destroy();
}