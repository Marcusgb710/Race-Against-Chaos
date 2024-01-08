/// @description Play correct music

if (room == Jamesoak_West 
|| room == Jamesoak_Midtown 
|| room == Bar 
|| room == Jamesoak_East 
|| room == Jamesoak_North) 
{
	set_song_ingame(mus_Jamesoak, 60, 0);
}

if room == Cafe
{
	set_song_ingame(noone, 3*60);	
}

if room == Jamesoak_South 
{
	set_song_ingame(mus_Beach, 60, 60);
}

if room == GasSt
{
	set_song_ingame(mus_Corys_Theme, 60, 60);	
}



