/// @param text_id
function scr_game_text(_text_id){

switch(_text_id){
	
	case "MiFirstLine":
		scr_text("* Man.", "Misty");
		scr_text("* I love hearing the sound of rain against the windows.", "Misty");
		scr_text("* It sounds like its raining cats and dogs, though.", "Misty");
		scr_text("* I'll put my jacket on whenever I go outside.", "Misty");
		break;
		
	case "MiSecondLine":
		scr_text("* I should look for Cory. Not sure if he's working today, though.", "Misty");
		scr_text("* Maybe someone at the bar would know where he is.", "Misty");
		scr_text("* (Bar's the pinkish-red building on the right)", "Misty");
		break;
		
	#region SAVE DIALOGUE	
	case "First Save":
		scr_text("* There's a boombox here.", "Misty");
		scr_text("* It has a green button labeled ''SAVE'' and a red one labeled ''LOAD''.", "Misty");
		scr_text("* Hm. Should I press one?", "Misty");
			scr_option("Save", "S");
			scr_option("Load", "L");
			scr_option("Back", "B");
			break;
		case "S":
			scr_option("Slot 1", "S1");
			scr_option("Slot 2", "S2");
		break;
			case "S1":
				save_game(0)
				scr_text("Saved.")
			break;
			case "S2":
				save_game(1)
				scr_text("Saved.")
			break;
		
		
		case "L":
			scr_option("Slot 1", "L1");
			scr_option("Slot 2", "L2");
		break;
			case "L1":
				load_game(0)
				scr_text("Loaded.")
			break;
			case "L2":
				load_game(1)
				scr_text("Loaded.")
			break;

		case "B":
		
		scr_text("* Eh, maybe later, when I'm in a more stressful situation.", "Misty");
			scr_text_color(20, 59, c_yellow, c_yellow, c_orange, c_orange);
		break;
	#endregion
	
	#region Psi Explanation
	case "Book":
		scr_text("* ''Psyche Magic and the story behind it.''", "Misty");
		scr_text("* Hmm... Should I read this?", "Misty");
			scr_option("Yes", "Y");
			scr_option("No", "N");
		break;
		case "Y":
		scr_text("* ''When multiple cracks erupted through the state,''", "Misty");
		scr_text("* ''Several teenagers happened to be around them when they appeared.''", "Misty");
		scr_text("* ''It's been rumored that four of said teenagers even fell in one,''", "Misty");
		scr_text("* ''And shortly came out unscathed, yet...''", "Misty");
		scr_text("* ''There was a mysterious, violet powder covered over all of them.''", "Misty");
		scr_text("* ''I have theorized that this is what I call PSI.''", "Misty");
		scr_text("* ''After Doctors confirmed they were in mint condition,''", "Misty");
		scr_text("* ''They reportedly caused a ruckus in the hospital.''", "Misty");
		scr_text("* ''They used otherworldly powers and were shortly kicked out. However, they did apologize.''", "Misty");
		scr_text("* ''Doctors have refused to give indentities, which is understandable. But whoever they are...''", "Misty");
		scr_text("* ''..I hope they can save us from this nightmare.'' -Callum J. Oswald, April 20XX", "Misty");
		break;
		case "N":
		scr_text("* ..Eh, Probably not.", "Misty");
		break;
	#endregion
	
	#region First NPCS
	case "Old Man Walt":
		scr_text("* Howdy Misty.", "Old");
		scr_text("* Hey Walt. How's business?", "Misty");
		scr_text("* Oh, its horrible. Absolutely horrible.", "Old");
		scr_text("* Still better than livin' with my ex wife though.", "Old");
		scr_text("* Aw. Well, I'm sure it'll kick off soon. Just have hope.", "Misty");
		scr_text("* That sure is a nice thing of you to say, Misty.", "Old");
		scr_text("* So, what'll it be?", "Old");
		break;
		
	case "Barista":
		scr_text("* Oh hey Misty. Fancy seein' you here.", "Barista");
		scr_text("* Yeah, well the campus is closed for the rest of the year so I've had a lot more free time recently.", "Misty")
		scr_text("* Nice. Well, do you need anything?", "Barista");
		scr_text("* Yes, actually. Do you know if Cory's working today?", "Misty");
		scr_text("* He's at the gas station, but I wouldn't really say he's working.", "Barista");
		scr_text("* Let me guess. You stopped by earlier and-", "Misty");
		scr_text("* Yep, he was asleep.", "Barista");
		scr_text("* Of course. Well, thanks.", "Misty");
		scr_text("* Anytime.", "Barista");
		scr_text("* (Okay so Cory is at the gas station. Thats in East Jamesoak. I should head there now.", "Misty");
			scr_text_color(48, 62, c_yellow, c_yellow, c_yellow, c_yellow);
	break;
	
	case "Security":
		scr_text("* Hi there. I like your suit.", "Misty");
		scr_text("* Do you have a parent or guardian, young lady?", "SG");
		scr_text("* No, why?", "Misty");
		scr_text("* Can't be allowed in the hall as an unsupervised teenager.", "SG");
		scr_text("* Why not?", "Misty");
		scr_text("* Look, I don't get paid to answer your questions.", "SG");
		scr_text("* I get paid to stand here and make sure you don't get in, so beat it.", "SG");
		scr_text("* Fine.", "Misty");
	break;
	
	#endregion
	
	#region FIRST EDGAR ENCOUNTER
		
		case "Edgar0.5":
		scr_text("* (Oh no it's Edgar)", "Misty");
		break;
		
		case "Edgar1":
		scr_text("* Well, well, well. Look who it is!", "Egg");
		scr_text("* Edgar can you move out the way please?", "Misty");
		scr_text("* Make me.", "Egg");
		scr_text("* I don't want to, I just need you to-", "Misty");
		scr_text("* Well if you're too chicken to fight, then I'm not moving.", "Egg");
		scr_text("* This is my street, therefore I can say who comes and goes as I please.", "Egg");
		scr_text("* This isn't even your street! Just move 8 pixels down, it's not hard, Edgar.", "Misty");
		scr_text("* Tell you what.", "Egg");
		scr_text("* If you can beat me in a duel...", "Egg");
		scr_text("* Please no.", "Misty");
		scr_text("* Then I'll humbly let you pass.", "Egg");
		scr_text("* Can we not do that-", "Misty");
		scr_text("* BUT.", "Egg");
		scr_text("* If I win, in which I obviously will,", "Egg");
		scr_text("* You'll be subjected to the worst punishment imaginable.", "Egg");
		scr_text("* Oh no...Heavens no...", "Misty");
		scr_text("* That's right.", "Egg");
		scr_text("* Taking the long way, through Jamsie Beach, and getting sand in your shoes!", "Egg");
		break;		
		
		case "Edgar1.2":
		scr_text("* No! That'll take forever to get out!", "Misty");
		scr_text("* Well if you don't want that, then I suggest you fight me.", "Egg");
		scr_text("* ...You know what, I'll just cut through North Jamesoak.", "Misty");
		scr_text("* Hmph.", "Egg");
		global.egg = true;
		break;
		
		case "Edgar2.1":
		
		scr_text("* HEY.", "Egg");
		scr_text("* Hm?", "Misty");
		
		break;
		
		case "Edgar2":
		
		scr_text("* Why won't you fight me? Do you think I'm too weak? Not strong enough for your ''Magic Powers'', huh?", "Egg");
		scr_text("* Wh..What? No, I just..", "Misty");
		scr_text("* If you won't fight me then I'll just make you. I'll prove I'm better!", "Egg");
		scr_text("* Wait a second! Why can't we just-", "Misty");
		scr_text("* Engarde!", "Egg");
		
		break;

		#endregion
	
	case "Sleepy Cory Quest":
	
		if global.friendquest1 == true
		{
		scr_text("* Got em yet?", "Cory");
		scr_text("* Nope.", "Misty");
		scr_text("* Damn.", "Cory");
		break;
		}		
		if global.coffeeget == true
		{
		scr_text("* Here.", "Misty");
		scr_text("* Thanks.", "Cory");
		scr_text("* So, what'd you need me for?", "Cory");
		scr_text("* Well since the world is in shambles right now,", "Misty");
		scr_text("* I was thinking of getting the gang back together for some ''Spring Cleaning''.", "Misty");
		scr_text("* Alright, I'm in. Where we meetin'?", "Cory");
		scr_text("* Port Vinai, our usual spot.", "Misty");
			scr_text_color(2,12, c_orange, c_orange, c_orange, c_orange);
		scr_text("* I see.", "Cory");
		scr_text("* Oh, by the way, take your time to get there. I have to get the rest first.", "Misty");
		scr_text("* Got it. I'll see ya there, Misty.", "Cory");
		global.friendquest1 = true;
		break;
		}
		
		if global.coffeequest == true
		{
		scr_text("* ....cofffffeeeee....", "Cory");
			scr_text_float(2,22)
		scr_text("* ...mizzzztttyy...", "Cory");
			scr_text_float(2,19)
		scr_text("* I'm going, I'm going.", "Misty");
		}
		else
		{
		global.coffeequest = true;
		scr_text("* Cory?", "Misty");
		scr_text("* ..Are you awake?", "Misty");
		scr_text("* ...zzzz....", "Cory");
			scr_text_float(2,13);
		scr_text("* ....cofffffeeeee....", "Cory");
			scr_text_float(2,22)
		scr_text("* ..Well, Partly.", "Misty");
		scr_text("* I'll be back.", "Misty");
		}
	break;


	case "CDoor":
		scr_text("* (I should see if Cory's awake first before I leave.)", "Misty");
	break;
	
	
	
		
		
		
		case "Max":
		if global.jondone
		{
		scr_text("* hey max, me and misty are going to the port.", "Jon");
		scr_text("* Ah, I see. You finally asked, huh?", "Max");
		scr_text("* ..what are you talking about?", "Jon");
		scr_text("* Heheh, nothing. Have fun, kids.", "Max");
		scr_text("* Kids? You're only two years older than us.", "Misty");
		scr_text("* Gotta be old eventually. Might as well start now.", "Max");
		break;
		}else{
		scr_text("* Hey Max, Are Jon and Kels here?", "Misty");
		scr_text("* Jon is. Kelsi went off somewhere.", "Max");
		scr_text("* He should be in his room if you need him. The door's unlocked.", "Max");
		scr_text("* Oh okay. Thanks.", "Misty");
		scr_text("* No problem.", "Max");
		break;
		}
		case "Jon1":
		if global.jondone
		{
			scr_text("* Wh- wait, how'd you..", "Misty");
			scr_text("* i dont take long to change.", "Jon");
			scr_text("* I see. Welp, lets go.", "Misty");
			scr_text("* right behind you.", "Jon");	
		}
		else
		{
		scr_text("* Hey Jon.", "Misty");
		scr_text("* oh, uh, hey misty...", "Jon");
		scr_text("* You ready to go?", "Misty");
		scr_text("* go..? where..?", "Jon");
		scr_text("* Port Vinai.", "Misty");
		scr_text("* oh okay, well uh, i have to change first, its too cold to go outside in this.", "Jon");
		scr_text("* Jon, it's 52 degrees.", "Misty");
		scr_text("* you know what i mean.", "Jon");
		scr_text("* Yeah, I'm just messin' with you. I'll let you get ready, Ima go look around.", "Misty");
		scr_text("* don't break anything, now.", "Jon");
		scr_text("* Will do.", "Misty");
		global.jondone = true;
		}
		break;

		
		
		
		case "Banan":
		
		scr_text("* I love the banana couches and all, but I genuinely can't imagine anyone sitting on them.", "Misty");
		break;
		
		case "Bed":
		
		if global.jondone
		{
		scr_text("* Jon's bed looks so comfy. I really wish he'd let me sleep in it.", "Misty");
		scr_text("* One can dream, I guess.", "Misty");
		}else{
		scr_text("* Jon's bed looks so comfy. I really wish he'd let me sleep in it.", "Misty");
		scr_text("* w..what?", "Jon");
		scr_text("* Oh- uh- Nevermind! I didn't say anything!", "Misty");
		scr_text("* (Why did I say that out loud...)", "Misty");
		}
		break;
		
		case "Kels1":
		
		scr_text("* oh there you are.", "Jon");
		scr_text("* Sup guys.", "Kels");
		scr_text("* What were you doing here?", "Misty");
		scr_text("* Just watching the sunset.", "Kels");
		scr_text("* sounds nice.", "Jon");
		scr_text("* What are you guys doing here?", "Kels");
		scr_text("* Well actually, we're getting the gang together for ''you know what''", "Misty");
		scr_text("* Ohhhh.", "Kels");
		break;
		
		case "Kels1.1":
		scr_text("* Alright, let's go.", "Kels");
		break;
		
		
		
		case "WC":
		scr_text("* Hey wait a minute, where's Cory?", "Kels");
		scr_text("* Y'know, I told him to be here. Don't know why he hasn't shown yet.", "Misty");
		scr_text("* he's probably off sleeping somewhere.", "Jon");
		scr_text("* Or he's stuck in traffic.", "Kels");
		scr_text("* kels, there is no traffic. epidemic, remember?", "Jon");
		scr_text("* Oh, right.", "Kels");
		scr_text("* In any case, I'm sure we'll..find...", "Misty");
		scr_text("* ..Uh. What is that?", "Misty");
		break;
		
		case "EGGNEOINT":
		
		scr_text("* Heheheheh.", "Egg");
		scr_text("* (Are you serious?!)", "Misty");
		scr_text("* You thought you guys were the only ones to find a magic pit? Think you're real clever, huh?", "Egg");
		scr_text("* Well guess what, I found it.", "Egg"); 
		scr_text("* I dove right in, found some purple dust.", "Egg");
		scr_text("* The dust helped a lot with the creation of this giant mech you see now.", "Egg");
		scr_text("* Ohoho, how the tables have turned.", "Egg");
		scr_text("* Listen, Edgar, we can talk about this.", "Misty");
		scr_text("* Nuh uh! Don't think so, Misty. You see, He told me something while I was down there.", "Egg");
		scr_text("* (''he?'' who's he talking about?)", "Jon");
		scr_text("* (I think he's gone insane.)", "Kels");
		scr_text("* (Maybe he means the robot?)", "Misty");
		scr_text("* He said ''While I gift you this power, cause as much mayhem as possible.''", "Egg");
		scr_text("* And what not a better way to start that than dealing with you guys!", "Egg");
		scr_text("* Woah woah woah! You're going to kill us?!", "Kels");
		scr_text("* What? No.", "Egg");
		scr_text("* Oh. Phew.", "Kels");
		scr_text("* I'm just going to harvest your magic powers so I'm more powerful than you.", "Egg")
		scr_text("* And then probably take over the world with the help of my robot here.", "Egg");
		scr_text("* Nevermind, not phew.", "Kels");
		scr_text("* Edgar if you don't stop we'll be forced to make you, and I really don't wanna do that!", "Misty");
		scr_text("* Well that's too bad, because I do.", "Egg");
		scr_text("* (Misty I think we gotta fight him.)", "Kels");
		scr_text("* (He'll take over the world and I can't imagine being ruled by a big nerd.)", "Kels");
		scr_text("* (yeah honestly i'm on Kels' side here.)", "Jon");
		scr_text("* (Fine.)", "Misty");
		scr_text("* Alright Edgar, let's end this here.", "Misty");
		scr_text("* Hohoho, I see we've become feisty now. Well, I won't complain.", "Egg");
		scr_text("* Engarde!", "Egg");
		break;
		
		case "EGGNEOEND":
		
		scr_text("* ...", "Egg");
		scr_text("* How..", "Egg");
		scr_text("* How did you beat me so easily...", "Egg");
		scr_text("* ..I guess I really am what they all say.", "Egg");
		scr_text("* I'm weak.", "Egg");
		scr_text("* what are you talking about?", "Jon");
		scr_text("* Everyone. No one takes me seriously. Everyone just bullies me for not being as strong as them.", "Egg");
		scr_text("* I thought being smart would be enough, but it's not. I'm just weak.", "Egg");
		scr_text("* ...", "Egg");
		scr_text("* well, thats just dead wrong.", "Jon");
		scr_text("* Huh?", "Egg");
		break;
		
		case "EGGNEOEND1":
		scr_text("* Edgar, you didn't lose because you're weak. You lost because you lost sight of what's important.", "Misty");
		scr_text("* You're strong mentally. Although not physically, you used your brain to come up with this idea.", "Misty"); 
		scr_text("* That's something even I couldn't do. Kels? Probably.", "Misty");
		scr_text("* But...It was dumb to try and fight you guys.", "Egg");
		scr_text("* Well,  yeah kinda. But people make mistakes.", "Misty");
		scr_text("* In the end, you're already better than most people, just in a different way.", "Misty");
		scr_text("* Don't let other people change that.", "Misty"); 
		scr_text("* and also maybe try to be less annoying in the future.", "Jon");
		scr_text("* And maybe don't try to concur the world with a giant robot.", "Kels");
		scr_text("* Yeah I'm gonna be honest I have no idea why I decided to do that. Actually, a few things are kind of a blur for me now..", "Egg");
		scr_text("* ..What do you mean?", "Misty");
		scr_text("* Well, I remember going down into the pit, Getting covered in some weird purple dust, and then next thing I know I'm here.", "Egg");
		scr_text("* ..That's weird.", "Misty");
		scr_text("* wait, didn't you say you talked to someone down there?", "Jon");
		scr_text("* I did?", "Egg"); 
		scr_text("* yeah i'm pretty sure you did.", "Jon");
		scr_text("* ..Huh.", "Egg");
		scr_text("* This is freaky. You really don't remember what happened?", "Kels");
		scr_text("* No?", "Egg");
		scr_text("* Hm. Well, it's best not to think about it for now.", "Misty");
		scr_text("* If you don't mind Edgar, we'll be on our way.", "Misty");
		scr_text("* Oh. Okay then. Have fun.", "Egg");
		scr_text("* see ya.", "Jon");
		scr_text("* Bye.", "Kels");
		break;
		
		
		case "EGGNEOEND2":
		scr_text("* Oh, and uh...", "Egg");
		break;

		case "EGGNEOEND3":
		scr_text("* Thanks for helping me see my strengths. You guys have my gratitude.", "Egg");
		break;
		
		
		
		case "jump":
		
		scr_text("* jumpy jump.", "Misty");
		break;
}

}