if room == global.battle_rm && image_index < 1
 {
		audio_sound_gain(mus_West_Jamesoak, 0, 1000);
		audio_play_sound(global.musid, 10, true);
		audio_sound_gain(global.musid, 20, 1000);
		instance_destroy();
 }