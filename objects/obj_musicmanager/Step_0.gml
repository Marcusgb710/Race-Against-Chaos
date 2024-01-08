var finalvol = 1; //audio_group_get_gain(ag_mus);

/// Play the song
if songasset != targetsongasset
{
	//Tell old song to shut up
	if audio_is_playing(songinst)
	{
		//add songinst to array to fade out
		array_push(_fadeoutinstances, songinst);
		//add songinst's starting volume so it's not a jumpscare
		array_push(_fadeoutinstvol, fadeininstvol);
		//add _fadeoutinstances's fade out frames
		array_push(_fadeoutinsttime, endfadeouttime);
		
		//reset songinst and songasset variables
		songinst = noone;
		songasset = noone;
	}
	
	//Play music if old song has faded out
	if array_length(_fadeoutinstances) == 0
	{
		if audio_exists(targetsongasset)
		{
			//Play it and store its inst in a variable
			songinst = audio_play_sound(targetsongasset, 1, true);
		
			//Start volume at 0
			audio_sound_gain(songinst, 0, 0);
			fadeininstvol = 0;
		}
	
		songasset = targetsongasset;
	}
}

//Volume Ctrl
	//Main Song Volume
	if audio_is_playing(songinst)
	{
		//fade in
		if startfadeintime > 0
		{
			if fadeininstvol < 1 { fadeininstvol += 1/startfadeintime; };
		}else{
			//Immediately start song if fade in is 0 frames
			fadeininstvol = 1;
		}
	
		//Set gain
		audio_sound_gain(songinst, fadeininstvol*finalvol, 0);
	}
	
	//Fading songs out
	for ( var i = 0; i < array_length(_fadeoutinstances); i++)
	{
		//fade the volume
		if _fadeoutinsttime[i] > 0
		{
			if _fadeoutinstvol[i] > 0 { _fadeoutinstvol[i] -= 1/_fadeoutinsttime[i]; };	
		}
		//Immediately cut volume to zero otherwise
		else
		{
			_fadeoutinstvol[i] = 0;	
		}
		
		//Set gain
		audio_sound_gain(_fadeoutinstances[i], _fadeoutinstvol[i]*finalvol, 0);
		
		//Stop music when volume is at zero, remove from all arrays
		if _fadeoutinstvol[i] <= 0
		{
			//Stop song
			if audio_is_playing(_fadeoutinstances[i]) { audio_stop_sound(_fadeoutinstances[i]); };
			//Remove from arrays
			array_delete(_fadeoutinstances, i, 1);
			array_delete(_fadeoutinstvol, i, 1);
			array_delete(_fadeoutinsttime, i, 1);
			//Set the loop back 1 since we deleted an entry
			i--;
		}
	}