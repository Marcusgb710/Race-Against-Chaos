///@arg object
///@arg itemtype
function invsearch(obj,itemtype)
{
	for (var i = 0; i < SLOTS; i += 1)
	{
		if obj.inventory[i] == itemtype
		{
			return(i);	
		}
		
	}
	return(-1);
}

///@arg object
///@arg itemtype
function invadd(obj,itemtype)
{
var _slot = invsearch(obj,-1);
if (_slot != -1)
{
	with (obj) inventory[_slot] = itemtype;
	return true;
}
else return false;
}

///@arg object
///@arg itemtype
function invremove(obj,itemtype)
{
var _slot = invsearch(obj,itemtype);
if (_slot != -1)
{
	with (obj) inventory[_slot] = -1;
	return true;
}
else return false;
}