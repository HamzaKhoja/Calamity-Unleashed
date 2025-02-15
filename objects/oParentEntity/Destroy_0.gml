// Drop Fragments and Items

if (entityFragmentCount > 0)
{
	fragmentArray = array_create(entityFragmentCount, entityFragment);
	dropItems(x, y, fragmentArray);
	
}

if (entityDropList != -1) && (type != 100)
{
	dropItems(x, y, entityDropList);	
}