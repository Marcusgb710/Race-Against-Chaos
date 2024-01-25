// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_text_v2(){
	var _dialog = 
	
	{
		mifirstline: [
			new GameDialog("* Man", "Misty", snd_vceType),
			
			new GameDialog("* I love hearing the sound of rain against the windows.", "Misty", snd_vceType),
			new GameDialog("* It sounds like its raining cats and dogs, though.", "Misty", snd_vceType),
			new GameDialog("* Better tie my hair up and get my jacket before I leave.", "Misty", snd_vceType),
			
		],
		misecondline: [
			new GameDialog("* I should look for Cory. Not sure if he's working today, though.", "Misty", snd_vceType),
			new GameDialog("* Maybe someone at the bar would know where he is.", "Misty", snd_vceType),
			new GameDialog("* (Bar's the pinkish-red building on the right)", "Misty", snd_vceType),
		],
		barista: [
		new GameDialog("* Oh hey Misty. Fancy seein' you here.", "Barista", snd_vceType),
		new GameDialog("* Yeah, well the campus is closed for the rest of the year so I've had a lot more free time recently.", "Misty", snd_vceType),
		new GameDialog("* Nice. Well, do you need anything?", "Barista", snd_vceType),
		new GameDialog("* Yes, actually. Do you know if Cory's working today?", "Misty", snd_vceType),
		new GameDialog("* He's at the gas station, but I wouldn't really say he's working.", "Barista", snd_vceType),
		new GameDialog("* Let me guess. You stopped by earlier and-", "Misty", snd_vceType),
		new GameDialog("* Yep, he was asleep.", "Barista", snd_vceType),
		new GameDialog("* Of course. Well, thanks.", "Misty", snd_vceType),
		new GameDialog("* Anytime.", "Barista", snd_vceType),
		new GameDialog("* (Okay so Cory is at the gas station. Thats in East Jamesoak. I should head there now.", "Misty", snd_vceType, "q2")
		
		],
		
		#region THE FIRST EDGAR ENCOUNTER
		edgar0_5:[
		new GameDialog("* (Oh no it's Edgar)", "Misty", snd_vceType),
		
		],
		edgar1:[
			new GameDialog("* Well, well, well. Look who it is!", "Edgar", snd_vceType4),
		new GameDialog("* Edgar can you move out the way please?", "Misty", snd_vceType),
		new GameDialog("* Make me.", "Edgar", snd_vceType4),
		new GameDialog("* I don't want to, I just need you to-", "Misty", snd_vceType),
		new GameDialog("* Well if you're too chicken to fight, then I'm not moving.", "Edgar", snd_vceType4),
		new GameDialog("* This is my street, therefore I can say who comes and goes as I please.", "Edgar", snd_vceType4),
		new GameDialog("* This isn't even your street! Just move 8 pixels down, it's not hard, Edgar.", "Misty", snd_vceType),
		new GameDialog("* Tell you what.", "Edgar", snd_vceType4),
		new GameDialog("* If you can beat me in a duel...", "Edgar", snd_vceType4),
		new GameDialog("* Please no.", "Misty", snd_vceType),
		new GameDialog("* Then I'll humbly let you pass.", "Edgar", snd_vceType4),
		new GameDialog("* Can we not do that-", "Misty", snd_vceType),
		new GameDialog("* BUT.", "Edgar", snd_vceType4),
		new GameDialog("* If I win, in which I obviously will,", "Edgar", snd_vceType4),
		new GameDialog("* You'll be subjected to the worst punishment imaginable.", "Edgar", snd_vceType4),
		new GameDialog("* Oh no...Heavens no...", "Misty", snd_vceType),
		new GameDialog("* That's right.", "Edgar", snd_vceType4),
		new GameDialog("* Taking the long way, through Jamsie Beach, and getting sand in your shoes!", "Edgar", snd_vceType4),
		
		],
		edgar1_2:[
		new GameDialog("* No! That'll take forever to get out!", "Misty", snd_vceType),
		new GameDialog("* Well if you don't want that, then I suggest you fight me.", "Edgar", snd_vceType4),
		new GameDialog("* ...You know what, I'll just cut through North Jamesoak.", "Misty", snd_vceType),
		new GameDialog("* Hmph.", "Egg", snd_vceType4,  "q3"),
		],
		#endregion
		
		#region THE SECOND EDGAR ENCOUNTER
		edgar2_1:[
		new GameDialog("* HEY.", "Edgar", snd_vceType4),
		new GameDialog("* Hm?", "Misty", snd_vceType),
		],
		
		edgar2:[
		new GameDialog("* Why won't you fight me? Do you think I'm too weak? Not strong enough for your ''Magic Powers'', huh?", "Edgar", snd_vceType4),
		new GameDialog("* Wh..What? No, I just..", "Misty", snd_vceType),
		new GameDialog("* If you won't fight me then I'll just make you. I'll prove I'm better!", "Edgar", snd_vceType4),
		new GameDialog("* Wait a second! Why can't we just-", "Misty", snd_vceType),
		new GameDialog("* Engarde!", "Edgar", snd_vceType4, undefined, Edgar),
		],
		
		//JUST FOR TESTING, DELETE WHEN BATTLE IS IN
		eee:[
		new GameDialog("* Wait actually its not in the game yet.", "Edgar", snd_vceType4),
		new GameDialog("* Oh, right.", "Misty", snd_vceType),
		new GameDialog("* Welp, see ya.", "Edgar", snd_vceType4),
		new GameDialog("* Bye.", "Misty", snd_vceType),
		],
		#endregion
		
		
		security:[
		new GameDialog("* Hi there. I like your suit.", "Misty", snd_vceType),
		new GameDialog("* Do you have a parent or guardian, young lady?", "Security", snd_vceType3),
		new GameDialog("* No, why?", "Misty", snd_vceType),
		new GameDialog("* Can't be allowed in the hall as an unsupervised teenager.", "Security", snd_vceType3),
		new GameDialog("* Why not?", "Misty", snd_vceType),
		new GameDialog("* Look, I don't get paid to answer your questions.", "Security", snd_vceType3),
		new GameDialog("* I get paid to stand here and make sure you don't get in, so beat it.", "Security", snd_vceType3),
		new GameDialog("* Fine.", "Misty", snd_vceType),
		],
		
		maxwell:[
		new GameDialog("* Hey Max, Are Jon and Kels here?", "Misty", snd_vceType),
		new GameDialog("* Jon is. Kelsi went off somewhere.", "Max", snd_vceType3),
		new GameDialog("* He should be in his room if you need him. The door's unlocked.", "Max", snd_vceType3),
		new GameDialog("* Oh okay. Thanks.", "Misty", snd_vceType),
		new GameDialog("* No problem.", "Max", snd_vceType3),
		],
		
		#region CORY FIRST DIALOGUE
		
		sleepycory:[
		new GameDialog("* Cory?", "Misty", snd_vceType),
		new GameDialog("* ..Are you awake?", "Misty", snd_vceType),
		new GameDialog("* ...zzzz....", "Cory", snd_vceType3),
		new GameDialog("* ....cofffffeeeee....", "Cory", snd_vceType3),
		new GameDialog("* ..Well, Partly.", "Misty", snd_vceType),
		new GameDialog("* I'll be back.", "Misty", snd_vceType, "q5"),
		],

		#endregion
	}
	return _dialog
}