// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_text_v2(){
	var _dialog = 
	
	{
		mifirstline: [
			new GameDialog("* Man", "Misty"),
			
			new GameDialog("* I love hearing the sound of rain against the windows.", "Misty"),
			new GameDialog("* It sounds like its raining cats and dogs, though.", "Misty"),
			new GameDialog("* Better tie my hair up and get my jacket before I leave.", "Misty"),
			
		],
		misecondline: [
			new GameDialog("* I should look for Cory. Not sure if he's working today, though.", "Misty", snd_mist_voice),
			new GameDialog("* Maybe someone at the bar would know where he is.", "Misty", snd_mist_voice),
			new GameDialog("* (Bar's the pinkish-red building on the right)", "Misty", snd_mist_voice),
		],
		barista: [
		new GameDialog("* Oh hey Misty. Fancy seein' you here.", "Barista", snd_Def_Voice),
		new GameDialog("* Yeah, well the campus is closed for the rest of the year so I've had a lot more free time recently.", "Misty", snd_mist_voice),
		new GameDialog("* Nice. Well, do you need anything?", "Barista", snd_Def_Voice),
		new GameDialog("* Yes, actually. Do you know if Cory's working today?", "Misty", snd_mist_voice),
		new GameDialog("* He's at the gas station, but I wouldn't really say he's working.", "Barista", snd_Def_Voice),
		new GameDialog("* Let me guess. You stopped by earlier and-", "Misty", snd_mist_voice),
		new GameDialog("* Yep, he was asleep.", "Barista", snd_Def_Voice),
		new GameDialog("* Of course. Well, thanks.", "Misty", snd_mist_voice),
		new GameDialog("* Anytime.", "Barista", snd_Def_Voice),
		new GameDialog("* (Okay so Cory is at the gas station. Thats in East Jamesoak. I should head there now.", "Misty", snd_mist_voice, "q2")
		
		]
	}
	return _dialog
}