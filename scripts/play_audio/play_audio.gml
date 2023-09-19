// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_audio(_audio){
	if(argument_count == 1)
	{
		if(!audio_is_playing(_audio))
		{
			audio_play_sound(_audio, -1, true);
		}
		return;
	}
	for(var _i = 0; _i < argument_count; _i++)
	{
			if(!audio_is_playing(argument[_i]))
		{
			audio_play_sound(argument[_i], -1, true);
		}
	}
}