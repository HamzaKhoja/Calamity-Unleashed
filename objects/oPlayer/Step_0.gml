// Input Information

key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

key_activate = keyboard_check_pressed(ord("E"));
key_attack = keyboard_check_pressed(vk_space);
key_item = keyboard_check_pressed(ord("Q"));

key_item_select_up = keyboard_check_pressed(ord("F"));
key_item_select_down = keyboard_check_pressed(ord("C"));



input_direction = point_direction(0, 0, key_right - key_left, key_down - key_up);
input_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0);



if (!global.gamePaused){
	script_execute(state);
	invulnerable = max(invulnerable-1, 0);
	flash = max(flash-0.05, 0);
}

depth = -bbox_bottom;

if (instance_exists(oText)) state = playerStateLocked;


//if (sprite_index == playerWalk){
//	if (image_index == 2) || (image_index == 5) 
//	{
//		audio_play_sound(choose(seGrass1, seGrass2, seGrass3), 1, 0);	
//	}
//}


