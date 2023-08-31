// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_eggbossdamage2(totaldamage, target){

//Check to see target

//Target is a monster
if (target.sprite_index == spr_btl_Edgar){
	//Make monster lose hp
	target.hp -= totaldamage;
	
	//target.hp = clamp(target.hp, 0, target.max_hp)
	
	//If hp is gone, reduce group by one
	if target.hp <= 0{
		target.number--;
		
	//If every enemy is dead
		if target.number <= 0{
			target.dead = true;	
			pos = ds_list_find_index(ds_target_boss, target);
			ds_list_delete(ds_target_boss, pos);
			
			if (ds_list_size(ds_target_boss) == 0){
				obj_Eggbattle2.state = "BATTLE OVER";
				obj_Eggbattle2.battleovertext = "VICTORY!";
			}
		}else{
			target.hp = ga_bosses[target.type, 1];	
		}
	}
}else{
	//Target is a hero
	if target.sprite_index == spr_UIs{
		//Make hero lose hp
		if (target.isdefending) totaldamage = ceil(totaldamage / 2);
		ga_party3[target.index, 2] -= totaldamage;
		//If hero loses all hp, hero is dead
		if ga_party3[target.index, 2] <= 0{
			target.dead = true;	
			
			pos = ds_list_find_index(ds_target_heroes, target);
			ds_list_delete(ds_target_heroes, pos);
			
			if (ds_list_size(ds_target_heroes) == 0){
				obj_Eggbattle2.state = "BATTLE OVER";
				obj_Eggbattle2.battleovertext = "YOU SNOOZE, YOU LOSE!";
			}
		}
	  }
	}
	
damage = instance_create_depth(target.x-24 + sprite_get_width(target.sprite_index/2), target.y, -200, obj_damage_indicator);
damage.text = totaldamage;
}