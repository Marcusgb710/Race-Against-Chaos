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
		barista: [
		new GameDialog("* Oh hey Misty. Fancy seein' you here.", "Barista"),
		new GameDialog("* Yeah, well the campus is closed for the rest of the year so I've had a lot more free time recently.", "Misty"),
		new GameDialog("* Nice. Well, do you need anything?", "Barista"),
		new GameDialog("* Yes, actually. Do you know if Cory's working today?", "Misty"),
		new GameDialog("* He's at the gas station, but I wouldn't really say he's working.", "Barista"),
		new GameDialog("* Let me guess. You stopped by earlier and-", "Misty"),
		new GameDialog("* Yep, he was asleep.", "Barista"),
		new GameDialog("* Of course. Well, thanks.", "Misty"),
		new GameDialog("* Anytime.", "Barista"),
		new GameDialog("* (Okay so Cory is at the gas station. Thats in East Jamesoak. I should head there now.", "Misty", "q2")
		
		]
	}
	return _dialog
}