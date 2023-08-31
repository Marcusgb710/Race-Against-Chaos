event_inherited();

if global.jondone == true
{
	instance_activate_object(self)
	exit;
}

if global.jonparty == true && global.jondone == true
{
	instance_destroy();
	
}

