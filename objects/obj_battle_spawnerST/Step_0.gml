if (state == "INIT") {
	if (ds_exists(ds_target_heroes, ds_type_list)){
	ds_list_destroy(ds_target_heroes);
	ds_heroes = -1;
	}

	if (ds_exists(ds_target_monstersST, ds_type_list)){
	ds_list_destroy(ds_target_monstersST);
	ds_monstersST = -1;
	}
		
	ds_target_heroes = ds_list_create();
	ds_target_monstersST = ds_list_create();
	
	with (obj_heroST){
		instance_destroy();	
	}
	
	with (obj_monster_groupST){
		instance_destroy();	
	}
	//Spawn party
	partysize = array_length(ga_party);
	heroX = 4;
	heroY = 180;
	
	for (var i = 0; i < partysize; i++){
		hero = instance_create_depth(heroX + (i*32), heroY, -100, obj_heroST);
		hero.index = i;
		hero.dead = false;
		hero.stunned = 0;
		hero.isasleep = false;
		hero.isdefending = false;
		ds_list_add(ds_target_heroes, hero);
	}
	
	//Spawn Monsters
	totalmonstergroups = irandom_range(1, MAX_MONSTER_GROUPS);
	
	for(var i = 0; i < totalmonstergroups; i++){
		monstergroup = instance_create_depth(a_monster_pos[i, 0], a_monster_pos[i, 1], -100, obj_monster_groupST)	
		monstergroup.type = irandom_range(0,3);
		monstergroup.number = MAX_MONSTERS_PER_GROUP;
		monstergroup.dead = false;
		monstergroup.hp = ga_enemiesST[monstergroup.type, 1];
		monstergroup.stunned = 0;
		monstergroup.isasleep = false;
		ds_list_add(ds_target_monstersST, monstergroup);
	}
	playerturn = true;
	actionstate = "INIT";
	psistate = "MAIN";
	attacktimer = 0;
	timetillmonsterattacks = 60;
	timer = 0;
	
	menustate = "MAIN"; //Which menu are we on? MAIN/PSI/ITEM
	menuselected = 0; //Which option are we on?
	optionstate = "MENU";
	optiontarget = noone;
	
	if (ds_exists(ds_heroes, ds_type_list)){
	ds_list_destroy(ds_heroes);
	ds_heroes = -1;
	}

if (ds_exists(ds_monstersST, ds_type_list)){
	ds_list_destroy(ds_monstersST);
	ds_monstersST = -1;
	}
	
if (ds_exists(ds_psi, ds_type_list)){
	ds_list_destroy(ds_psi);
	ds_psi = -1;
	}

		state = "READY";
}


if (state == "READY"){
	if !audio_is_playing(mus_Battle_Against_A_Strong_Enemy)
	{
	audio_play_sound(mus_Battle_Against_A_Strong_Enemy, 1, true, 50);
	}
	
	if playerturn{
		if actionstate == "INIT"{
			if (ds_exists(ds_heroes, ds_type_list)){
				ds_list_destroy(ds_heroes);
				ds_heroes = -1;
			}
			//Recreate list
			ds_heroes = ds_list_create();
			
			//Add valid heroes to list
			with (obj_heroST){
				if (ga_party[index, 2] > 0) ds_list_add(other.ds_heroes, id);
				isdefending = false;
			}
			
			ds_list_sort(ds_heroes, true);
			
			menustate = "MAIN";
			menuselected = 0;

			
			actionstate = "READY";
		}
		
		if actionstate == "READY"{
			
			herotocommand = ds_heroes[| 0];
			
			//Take player input
			if (menustate == "MAIN"){
			  if (optionstate == "MENU")
			  {
				if (keyboard_check_pressed(global.key_up)){
					if ((menuselected - 1) >= 0){
						menuselected--;	
					}else{
						menuselected = (array_length(a_menu) - 1);	
					}
				}
			if (keyboard_check_pressed(global.key_down)){
					if ((menuselected + 1) < array_length(a_menu)){
						menuselected++;	
					}else{
						menuselected = 0;	
					}
				}
			}
			
			if (keyboard_check_pressed(vk_space)){
				    //ATTACK
					if menuselected == 0{
						if optionstate != "ATTACK"{
							
							with obj_monster_groupST{
								if number > 0{
									other.optiontarget = id;
									break;
								}
								
							}
							
							selectedactor = ds_list_find_index(ds_target_monstersST, optiontarget)
							
							optionstate = "ATTACK";	
						}else{
							//Let game know which hero we're on
							herotocommand = ds_list_find_value(ds_heroes, 0);
							ds_list_delete(ds_heroes, 0);
							//Work out damage and apply it
							heromaxdamage = ga_party[herotocommand.index, 5];
							herototaldamage = irandom_range(1, heromaxdamage);
							
							scr_damageST(herototaldamage, optiontarget);
							audio_play_sound(snd_attack,1,false);
							herotocommand.attack = true;
							optionstate = "MENU";
						}
					}
					//PSI
					if menuselected == 1{
						if (optionstate != "PSI"){
							//Check Psi list exists and delete it
							if (ds_exists(ds_psi, ds_type_list)){
								ds_list_destroy(ds_psi);
								ds_psi = -1;
							}
							
							//Create Psi list
							ds_psi = ds_list_create();
							
							//Add spells to list
							for (var spells = 6; spells < 10; spells++){
								if (ga_party[herotocommand.index, spells] == true){
									ds_list_add(ds_psi, spells);	
								}
							}
							
							selectedspell = 0;
							psistate = "MAIN";
							optionstate = "PSI";
						}else{
							if psistate != "CHOOSE"{
							
							if (ds_psi[| selectedspell]) == 6{
								optiontarget = herotocommand
								selectedactor = herotocommand.index;
							}else{
								with obj_monster_groupST{
									if number > 0{
										other.optiontarget = id;
										break;
									}
								}
								selectedactor = ds_list_find_index(ds_target_monstersST, optiontarget)
							}
							if (ds_list_size(ds_psi) > 0) && (ga_party[herotocommand.index, 4] >= 15)  psistate = "CHOOSE";
							else audio_play_sound(snd_E_B, 1, false);
							
						}else{
							//Cast spell
							if (ds_psi[| selectedspell] <= 7){
								if (ds_psi[| selectedspell] == 6) herototaldamage = irandom_range(-15, -25);
								else if (ds_psi[| selectedspell] == 7) herototaldamage = irandom_range(15, 25);
								
								ga_party[herotocommand.index, 4] -= 5;
								scr_damageST(herototaldamage, optiontarget);
								audio_play_sound(snd_psyche,1,false);
							}else{
								//Stun/Sleep
								//Set hero/monster stun/sleep var
								
								//STUN
								if (ds_psi[| selectedspell] == 8){
									chancetostun = 50;
									roll = irandom(99);
									
									if (chancetostun < roll){
										optiontarget.stunned = 3;	
									}
									ga_party[herotocommand.index, 4] -= 10;
									audio_play_sound(snd_psyche,1,false);
								}
								//SLEEP
								if (ds_psi[| selectedspell] == 9){
									chancetosleep = 25;
									roll = irandom(99);
									
									if (chancetosleep < roll){
										optiontarget.isasleep = true;	
									}
									ga_party[herotocommand.index, 4] -= 15;
									audio_play_sound(snd_psyche,1,false);
								}
							}
							
							//Let game know which hero we're on
							herotocommand = ds_list_find_value(ds_heroes, 0);
							ds_list_delete(ds_heroes, 0);
							
							herotocommand.attack = true;
							optionstate = "MENU";
							psistate = "MAIN";
						}
					}
				}
					//ITEM
					if menuselected == 2{
						if (optionstate != "ITEM") && (optionstate != "CHOOSE"){
							selecteditem = 0;
							optionstate = "ITEM";
						}else{
							if (optionstate == "ITEM"){ 
							
							
							if (ga_inv[herotocommand.index, selecteditem] != ""){
								optiontarget = herotocommand;
								selectedactor = herotocommand.index;
								optionstate = "CHOOSE";	
							}else{
								audio_play_sound(snd_E_B, 1, false);
							}
						  }else{
							if (optionstate == "CHOOSE"){
							//Let game know which hero we're on
							herotocommand = ds_list_find_value(ds_heroes, 0);
							ds_list_delete(ds_heroes, 0);
							
							ga_inv[herotocommand.index, selecteditem] = "";
		
							//Work out damage and apply it
							herototaldamage = irandom_range(-10, -20);
							
							scr_damageST(herototaldamage, optiontarget);
							
							herotocommand.attack = true;
							optionstate = "MENU";
							}
						  }
						}
					}
					//DEFEND
					if menuselected == 3{
						herotocommand.isdefending = true;	
							
							//Let game know which hero we're on
							herotocommand = ds_list_find_value(ds_heroes, 0);
							ds_list_delete(ds_heroes, 0);
							ga_party[herotocommand.index, 4] += 5;
							
							herotocommand.attack = true;
							optionstate = "MENU";
							audio_play_sound(snd_defend,1,false);
					}
					//FLEE
					if menuselected == 4{
						
						runevent = choose("FAIL", "SUCCEED");
						
						if runevent == "FAIL"{
							herotocommand = ds_list_find_value(ds_heroes, 0);
							ds_list_delete(ds_heroes, 0);
							
							herotocommand.attack = true;
							optionstate = "MENU";	
						}else{
							battleovertext = "THE PARTY HAS RAN AWAY COWARDLY...";
							state = "BATTLE OVER";	
						}
					}
					
				}
			
				if (optionstate == "ATTACK") || (psistate == "CHOOSE") || (optionstate == "CHOOSE"){
				
					if optiontarget.sprite_index == spr_stmonsters{
							if (keyboard_check_pressed(global.key_left) || keyboard_check_pressed(global.key_right)){
								selectedactor = 0;
								optiontarget = ds_target_heroes[| selectedactor];
							}
						
						if (keyboard_check_pressed(global.key_down)){
							if ((selectedactor + 1) < ds_list_size(ds_target_monstersST)){
								selectedactor++;
							}else{
								selectedactor = 0;	
							}
							optiontarget = ds_target_monstersST[| selectedactor];
						}
						if keyboard_check_pressed(global.key_up){
							if ((selectedactor - 1) >= 0){
								selectedactor--;	
							}else{
								selectedactor = (ds_list_size(ds_target_monstersST) - 1);	
							}
							optiontarget = ds_target_monstersST[| selectedactor];
						}
					}else{
					//HEROES
						if optiontarget.sprite_index == spr_UIs{
						if (keyboard_check_pressed(global.key_left) || keyboard_check_pressed(global.key_right)){
							selectedactor = 0;
							optiontarget = ds_target_monstersST[| selectedactor];
						}
						if (keyboard_check_pressed(global.key_down)){
							if ((selectedactor + 1) < ds_list_size(ds_target_heroes)){
								selectedactor++;
							}else{
								selectedactor = 0;	
							}
							optiontarget = ds_target_heroes[| selectedactor];
						}
						if keyboard_check_pressed(global.key_up){
							if ((selectedactor - 1) >= 0){
								selectedactor--;	
							}else{
								selectedactor = (ds_list_size(ds_target_heroes) - 1);	
							}
							optiontarget = ds_target_heroes[| selectedactor];
						}
					}
				  }
				}
				//PSI
				if optionstate == "PSI"{
					
					if psistate == "MAIN"{
					totalknownspells = ds_list_size(ds_psi) - 1;
					if keyboard_check_pressed(global.key_up){
						if (selectedspell == 0)	selectedspell = totalknownspells;
						else selectedspell--;
					}
					if keyboard_check_pressed(global.key_down){
						if (selectedspell == totalknownspells) selectedspell = 0;
						else selectedspell++;
					}
				}
			}
			
			//ITEM
			if (optionstate == "ITEM"){
				totalitems = 2;	
				if keyboard_check_pressed(global.key_up){
					if (selecteditem == 0)	selecteditem = totalitems;
					else selecteditem--;
					}
				if keyboard_check_pressed(global.key_down){
					if (selecteditem == totalitems) selecteditem = 0;
					else selecteditem++;
					}
			}
		}
			
			//Go back
			if (keyboard_check_pressed(vk_backspace)){
				optionstate = "MENU";	
				psistate = "MAIN";
			}
			
			if (ds_list_size(ds_heroes) <= 0){
				actionstate = "INIT";
				playerturn = false;
			}
		}
	}
	
	if (!playerturn){
		if actionstate == "INIT"{
			if (ds_exists(ds_monstersST, ds_type_list)){
				ds_list_destroy(ds_monstersST);
				ds_monstersST = -1;
			}
			//Recreate list
			ds_monstersST = ds_list_create();
			
			//Add valid heroes to list
			with(obj_monster_groupST){
				if number > 0 ds_list_add(other.ds_monstersST, id);	
			}
			
			ds_list_sort(ds_monstersST, true);
			
			actionstate = "READY";
		}
		
		if actionstate == "READY"{
			attacktimer++;
			
			if (attacktimer >= timetillmonsterattacks){
				
				//Grab the monster whose turn it is
				activemonster = ds_list_find_value(ds_monstersST, 0);
				ds_list_delete(ds_monstersST, 0);
				
				//Check if their stunned/asleep
				
				if (activemonster.stunned > 0){
				activemonster.stunned--;
				activemonster.attack = false;
				}
				
				if (activemonster.isasleep){
					activemonster.attack = false;
					roll = irandom(99);
					chancetowake = 25;
					if (chancetowake < roll){
						activemonster.isasleep = false;	
					}
				}
				
				if (activemonster.stunned <= 0) && (activemonster.isasleep == false){
				activemonster.attack = true;
				
				//Pick A Victim >:}
				randomvictim = irandom(ds_list_size(ds_target_heroes) - 1);
				victim = ds_target_heroes[| randomvictim];
				maxmonsterdmg = ga_enemiesST[activemonster.image_index, 5];
				damage = irandom_range(maxmonsterdmg-10, maxmonsterdmg);
				
				scr_damageST(damage, victim);
				}
				attacktimer = 0;
			}
			
			if ds_list_size(ds_monstersST) <= 0{
				actionstate = "INIT";
				playerturn = true;
			}
		}
	}
}

if state == "BATTLE OVER"{
	timer++;
	
	audio_stop_sound(mus_Battle_Against_A_Strong_Enemy);
	if !audio_is_playing(mus_Stats_and_Config)
		{
		audio_play_sound(mus_Stats_and_Config, 1, true, 50);
		}
	
	if keyboard_check(vk_space) && (timer >= (room_speed * 3)){
		with obj_heroST{
			instance_destroy();
		}
		with obj_monster_groupST{
			instance_destroy();
		}
		audio_stop_sound(mus_Stats_and_Config);
		instance_destroy();
	}
}