GrowthProgress += ( 1 - GrowthProgress) / 50;
TextProgress += global.textSpeed;

x1 = lerp(x1, x1Target, GrowthProgress);
x2 = lerp(x2, x2Target, GrowthProgress);

// Cycle Through Responses
key_up =   keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);

responseSelected += (key_down - key_up);
var maxQ = array_length(responses) - 1;
var minQ = 0;

if (responseSelected > maxQ) responseSelected = minQ;
if (responseSelected < minQ) responseSelected = maxQ;

var sound = choose (d1, d2, d3, d4, d5, d6, d7, d8, d9, d10);

if (TextProgress < string_length(messageText)) && (!speaking()) && (background != 2) audio_play_sound(sound, 1, 0);


if (keyboard_check_pressed(vk_space)){
	var messageLength = string_length(messageText);
	
	if (TextProgress >= messageLength)
	{
		if (responses[0] != -1){
			with (originInstance) {
				dialogueResponses(other.responseScripts[other.responseSelected]);
			}
		}
		instance_destroy();
		if (instance_exists(oTextQueued)){
			with (oTextQueued) ticket--;	
		}
		else {
			with (oPlayer) state = prevState;	
		}
	}
	
	else {
		TextProgress = 	messageLength;
	}
}