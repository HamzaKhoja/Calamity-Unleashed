function newTextBox(){
	var obj;
	if (instance_exists(oText)) obj = oTextQueued; 
	else obj = oText;
	
	with (instance_create_layer(0, 0, "Instances", obj))
	{
		messageText = argument[0];
		if (instance_exists(other)) originInstance = other.id; else originInstance = noone;
		if (argument_count > 1) background = argument[1]; else background = 1;
		
		if (argument_count > 2) 
		{
			
			// Trim Identifiers and Store in Array
			_responses = argument[2];
			
			responses = array_create(array_length(_responses),"");
			_arrayIndex = 0;
			while(_arrayIndex < array_length(_responses))
			{
				responses[_arrayIndex] = string_copy(_responses[_arrayIndex], 1, string_length(_responses[_arrayIndex]));
				_arrayIndex++;
			}
			
			
			for (var i = 0; i < array_length(responses); i++){
				var markerPos = string_pos(":", responses[i]);
				responseScripts[i] = real(string_copy(responses[i], 1, markerPos-1));
				responses[i] = string_delete(responses[i], 1, markerPos);
			}
		}
		
		else {
			responses = [-1];
			responseScripts = [-1];
		}
	}
	
	with (oPlayer){
		
		if (state != playerStateLocked){
			prevState = state;
			state = playerStateLocked;
		}
	}
}