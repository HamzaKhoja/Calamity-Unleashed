if (instance_exists(oPlayer) 
	&& position_meeting(oPlayer.x, oPlayer.y, id) 
	&& !instance_exists(oText))
{
	newTextBox("Do you wish to meet Calamity?", 2, ["17:Yes", "18:No"]);
}