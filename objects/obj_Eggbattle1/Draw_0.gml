//Draw Menu
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(BattleGonzobo);

fontsize = font_get_size(BattleGonzobo);

BUFFER = 4;
menuX = 8 * 8.5;
menuY = room_height - ((fontsize + BUFFER) * (array_length(a_menu)));


if menustate == "MAIN" && playerturn{
	if optionstate == "MENU"{
for(var i = 0; i < array_length(a_menu); i++;){
	
	//Draw Each Option
	draw_text(menuX, menuY + (i * (fontsize + BUFFER)), a_menu[i]);	
	
	//Draw Arrow
	if (menuselected == i){
		arrowX = menuX - 16;
		arrowY = menuY + (i * (fontsize + BUFFER));
		draw_sprite(spr_btlarrow, 0, arrowX, arrowY);
		}
	  }
	}
	if (optionstate == "ATTACK") || (psistate == "CHOOSE") || (optionstate == "CHOOSE"){
		draw_sprite_ext(spr_btlarrow, 0, optiontarget.x + (sprite_get_width(spr_monsters) / 8), optiontarget.y-36, 1, 1, 270, c_white, 1);	
		
	}
	if (optionstate == "PSI"){
		if psistate == "MAIN"{
		//Show spells
		for (var spells = 0; spells < ds_list_size(ds_psi); spells++){
			var spellid = ds_list_find_value(ds_psi, spells);
			if (spellid > -1) var spellname = a_spells_text[spellid];
			else var spellname = "ERROR";
			
			draw_text(menuX + 64, menuY + (spells * (fontsize + BUFFER)), spellname);
			
			arrowX = menuX + 64 - 16;
			arrowY = menuY + (spells * (fontsize + BUFFER));
			if (spells == selectedspell) draw_sprite(spr_btlarrow, 0, arrowX, arrowY);
		}
	  }
	}
	if (optionstate == "ITEM"){
		for (var item = 0; item < 3; item++){
			if (ga_inv[herotocommand.index, item] == "") itemname = "EMPTY";
			else itemname = ga_inv[herotocommand.index, item];
			
			draw_text(menuX + 64, menuY + (item * (fontsize + BUFFER)), itemname);
			
			arrowX = menuX + 64 - 16;
			arrowY = menuY + (item * (fontsize + BUFFER));
			if (item == selecteditem) draw_sprite(spr_btlarrow, 0, arrowX, arrowY);
		}
	}
  }
  
numberofheroes = array_length(ga_party1)
uiX = BUFFER;
uiY = room_height - (numberofheroes * (fontsize + BUFFER));

for (var i = 0; i < numberofheroes; i++){
	draw_set_font(FontNumbers);
	draw_text(uiX + string_width("H") + (i*32), uiY-48, string(ga_party1[i, 2]) + string(" HP"));
	draw_text(uiX + string_width("H") + (i*32), uiY-40, string(ga_party1[i, 4]) + string(" PP"));
}

if state == "BATTLE OVER"{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(BattleGonzobo);
	draw_set_alpha(0.5)
	draw_rectangle_color(0,0,288,216,c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	draw_text(room_width/2, room_height/4, string(battleovertext));
}