

#region IDLE

if sliding == false
{
	startpointx = x;
	startpointy = y;
	
	xspd = 0;
	yspd = 0;
}

#endregion

if place_meeting(x,y,obj_pusharea)
{
	pushblockarea = true;	
}

if place_meeting(x,y,obj_iceground)
{
	onice = true;	
}

#region SLIDING

if sliding == true
{
	var _realdir = facedir*90;
	
	var _targetxdist = lengthdir_x(gridspace, _realdir);
	var _targetydist = lengthdir_y(gridspace, _realdir);
	targetx = startpointx + _targetxdist;
	targety = startpointy + _targetydist;
	
	if onice == true
	{
		
		targetx = startpointx;
		targety = startpointy;
		
		while place_meeting(targetx + _targetxdist, targety + _targetydist, obj_iceground)
		&& !place_meeting(targetx + _targetxdist, targety + _targetydist, obj_wall)
		{
			targetx += _targetxdist;
			targety += _targetydist;
		}
	}
	
	var _targetdist = point_distance(x,y,targetx,targety);
	var _finalspd = min(movespd, _targetdist);
	xspd = lengthdir_x(_finalspd, _realdir);
	yspd = lengthdir_y(_finalspd, _realdir);
	
	if pushblockarea == true && !place_meeting(targetx, targety, obj_pusharea)
	{
		xspd = 0;
		yspd = 0;
	}
	
	if place_meeting(targetx, targety, obj_wall)
	{
		xspd = 0;
		yspd = 0;
	}
}

#endregion

x += xspd;
y += yspd;

if xspd == 0 && yspd == 0
{
	sliding = false;	
}

depth = -bbox_bottom;