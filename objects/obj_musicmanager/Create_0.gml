//Info for song currently playing
songinst = noone;
songasset = noone;
targetsongasset = noone;
endfadeouttime = 0; //Fade Out song
startfadeintime = 0; //Fade In song
fadeininstvol = 1; //Volume of song

//Fading music out and stopping it
_fadeoutinstances = array_create(0); //audio to fade out
_fadeoutinstvol = array_create(0); //volumes of each song
_fadeoutinsttime = array_create(0); //how fast the fadeout happens