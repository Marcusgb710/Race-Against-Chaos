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
		
		],
		edgar0_5:[
		new GameDialog("* (Oh no it's Edgar)", "Misty", snd_mist_voice),
		
		],
		edgar1:[
			new GameDialog("* Well, well, well. Look who it is!", "Egg", snd_egg_voice),
		new GameDialog("* Edgar can you move out the way please?", "Misty", snd_mist_voice),
		new GameDialog("* Make me.", "Egg"),
		new GameDialog("* I don't want to, I just need you to-", "Misty", snd_mist_voice),
		new GameDialog("* Well if you're too chicken to fight, then I'm not moving.", "Egg", snd_egg_voice),
		new GameDialog("* This is my street, therefore I can say who comes and goes as I please.", "Egg", snd_egg_voice),
		new GameDialog("* This isn't even your street! Just move 8 pixels down, it's not hard, Edgar.", "Misty", snd_mist_voice),
		new GameDialog("* Tell you what.", "Egg", snd_egg_voice),
		new GameDialog("* If you can beat me in a duel...", "Egg", snd_egg_voice),
		new GameDialog("* Please no.", "Misty", snd_mist_voice),
		new GameDialog("* Then I'll humbly let you pass.", "Egg", snd_egg_voice),
		new GameDialog("* Can we not do that-", "Misty", snd_mist_voice),
		new GameDialog("* BUT.", "Egg", snd_egg_voice),
		new GameDialog("* If I win, in which I obviously will,", "Egg", snd_egg_voice),
		new GameDialog("* You'll be subjected to the worst punishment imaginable.", "Egg", snd_egg_voice),
		new GameDialog("* Oh no...Heavens no...", "Misty", snd_mist_voice),
		new GameDialog("* That's right.", "Egg", snd_egg_voice),
		new GameDialog("* Taking the long way, through Jamsie Beach, and getting sand in your shoes!", "Egg", snd_egg_voice),
		
		],
		edgar1_2:[
		new GameDialog("* No! That'll take forever to get out!", "Misty", snd_mist_voice),
		new GameDialog("* Well if you don't want that, then I suggest you fight me.", "Egg", snd_egg_voice),
		new GameDialog("* ...You know what, I'll just cut through North Jamesoak.", "Misty", snd_mist_voice),
		new GameDialog("* Hmph.", "Egg", snd_egg_voice),
		]
	}
	return _dialog
}