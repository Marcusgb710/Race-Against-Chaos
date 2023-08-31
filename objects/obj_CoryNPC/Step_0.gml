if global.coffeeget == true && !instance_activate_object(self)
{
	instance_activate_object(self);	
}

if (audio_sound_get_gain(mus_Corys_Theme) <= 0)
{
	audio_stop_sound(mus_Corys_Theme);	
}

