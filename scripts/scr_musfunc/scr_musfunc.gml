///@arg song
///@arg fadeOut
///@arg fadeIn
function set_song_ingame( _song, _fadeoutcurrentsong = 0, _fadein = 0)
{
	with(obj_musicmanager)
	{
		targetsongasset = _song;
		endfadeouttime = _fadeoutcurrentsong;
		startfadeintime = _fadein;
	}
}