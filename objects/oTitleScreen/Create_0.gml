titleVisible = 0.01;
keyPressed = false;
slotsVisible = 0.0;
slotSelected = 0;

optionSelected = -1;

loadingStarted = false;
rightSide = true;

for (var slot = 0; slot <=2; slot++)
{
		var fileName = "save" + string(slot) + ".sav";
		if (file_exists(fileName))
		{
			slotData[slot] = loadFromFile(fileName);	
		}
		else {
			slotData[slot] = -1;	
		}
}

options = ["Settings", "Shop", "Credits"];