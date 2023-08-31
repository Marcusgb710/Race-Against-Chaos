/// @param room
/// @param next track
function audio_sound_change(_Room, _Next){
	if room == _Room && !audio_is_playing(_Next)
	{

audio_pause_all();

audio_play_sound(_Next, 1, true);
audio_sound_gain(_Next, 50, 1200);
	}
}
