function roomTransition(type, targetRoom){
	if (!instance_exists(oTransition))
	{
		with(instance_create_depth(0, 0, -9999, oTransition))
		{
			_type = type;
			target = targetRoom;
		}
	}
}