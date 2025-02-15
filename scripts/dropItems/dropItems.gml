function dropItems(x, y, itemsToDrop){
	var items = array_length(itemsToDrop);
	
	if (items > 1){
		var anglePerItem = 360/items;
		var angle = random(360);
		
		for (var i = 0; i <items; i++) 
		{
			with (instance_create_layer(x, y, "Instances", itemsToDrop[i]))
			{
				direction = angle;
				spd = 0.5 + (items * 0.1) + random(0.1);
			}
			angle += anglePerItem;
		}
		
	}
	else instance_create_layer(x, y, "Instances", itemsToDrop[0]);
}