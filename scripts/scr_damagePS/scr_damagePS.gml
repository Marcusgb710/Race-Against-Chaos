// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damagePS(totaldamage, target){

//Check to see target

//Target is a monster
if (target.sprite_index == spr_psmonsters){
	//Make monster lose hp
	target.hp -= totaldamage;
	
	//target.hp = clamp(target.hp, 0, target.max_hp)
	
	//If hp is gone, reduce group by one
	if target.hp <= 0{
		target.number--;
		
	//If every enemy is dead
		if target.number <= 0{
			target.dead = true;	
			pos = ds_list_find_index(ds_target_monstersPS, target);
			ds_list_delete(ds_target_monstersPS, pos);
			
			if (ds_list_size(ds_target_monstersPS) == 0){
				obj_battle_spawnerPS.state = "BATTLE OVER";
				obj_battle_spawnerPS.battleovertext = "VICTORY!";
			}
		}else{
			target.hp = ga_PSenemies[target.type, 1];	
		}
	}
}else{
	//Target is a hero
	if target.sprite_index == spr_UIs{
		//Make hero lose hp
		if (target.isdefending) totaldamage = ceil(totaldamage / 2);
		ga_party[target.index, 2] -= totaldamage;
		//If hero loses all hp, hero is dead
		if ga_party[target.index, 2] <= 0{
			target.dead = true;	
			
			pos = ds_list_find_index(ds_target_heroes, target);
			ds_list_delete(ds_target_heroes, pos);
			
			if (ds_list_size(ds_target_heroes) == 0){
				obj_battle_spawnerPS.state = "BATTLE OVER";
				obj_battle_spawnerPS.battleovertext = "FAILURE.";
			}
		}
	  }
	}
	
damage = instance_create_depth(target.x-24 + sprite_get_width(target.sprite_index/2), target.y, -200, obj_damage_indicator);
damage.text = totaldamage;
}