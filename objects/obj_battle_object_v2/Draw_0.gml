/// @description Insert description here
// You can write your code in this editor
#region draw variables
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(BattleGonzobo);

var fontsize = font_get_size(BattleGonzobo);

var _x_buffer = 90;

var _y_buffer = 10;

var _y = room_height - sprite_get_height(spr_blackbars);

var _text_x = room_width - _x_buffer;
var _text_y = _y;

var _hero_ui_x = 5;
var _hero_ui_y = _y;



var _enemy_y = room_height/ 2 - 64/2
var _enemy_x;

if(enemy_amount == 1)
{
	_enemy_x = room_width/2 - 64/2
}
else
{
	_enemy_x = 	(room_width/2 - (90*enemy_amount) / 2)
}

var _enemy_arrow_y = _enemy_y// - sprite_get_height(spr_selectarrow);
var _enemy_arrow_x = _enemy_x

var _arrow_x = 5 + (sprite_get_width(spr_UIs)/2 - (sprite_get_width(spr_selectarrow)/2));
var _arrow_y = sprite_get_height(spr_UIs) + font_get_size(FontNumbers)*2+ 3 + _y;

//draw menu option
for(var _i =0; _i < array_length(current_menu); _i++){
	draw_text(_text_x, _text_y, current_menu[_i].name);
	_text_y += 10;
	//show_debug_message(sprite_get_height(spr_blackbars))
}
#endregion

#region draw hero sprite boxes and animations

// draw hero sprite boxes
for(var _i = 0; _i < array_length(party); _i++)
{
	var _hero = party[_i]
	if(_hero.in_party)
	{
		_hero.position = {}
		_hero.position._x = _hero_ui_x
		_hero.position._y = _hero_ui_y
		
		//draw damage numbers
		if(hurt_hero && picked_hero == _i)
		{
		//show_debug_message(picked_hero)
		var _hero_damage_text;
		var _damage_text = 0;  
		var _hero_damage_text_x = (_hero_ui_x + (sprite_get_width(spr_UIs)*(picked_hero+1))) / 2
		var _hero_damage_text_y = _hero_ui_y + font_get_size(FontNumbers)
		hero_hurt_percent += 1/60;
		if(hero_hurt_percent > 1.2){hurt_hero = false;heal_hero = false;defend_hero = false; enemy_attack_animation_activation=false; hero_hurt_percent = 0 efx = true};
		var _position = animcurve_channel_evaluate(hero_hurt_curve, hero_hurt_percent);
		var _start_y = _hero_damage_text_y;
		var _end_y = _hero_damage_text_y - 5;
		var _start_x = _hero_damage_text_x;
		var _end_x = _hero_damage_text_x + 3;
		var _distance_x = _end_x - _start_x;
		var _distance = _end_y - _start_y;
		_hero_damage_text_y = _start_y + (_distance * _position);
		_hero_damage_text_x = _start_x + (_distance_x * _position);
		if(heal_hero){var _text_color = c_green; _hero_damage_text =$"+{hero_damage_text}" }
		else if(defend_hero){var _text_color = c_blue; _hero_damage_text =$"s+{hero_damage_text}" }
		else{var _text_color = c_red; _hero_damage_text =$"-{hero_damage_text}" }
		
		draw_text_color(_hero_damage_text_x, _hero_damage_text_y, _hero_damage_text, _text_color, _text_color, _text_color, _text_color, 0.9);
		
		}
		var _health_and_pp_Xoffset = 12
		var _health_and_pp_Yoffset = 20;
		var _hoffset = 0;
		
		
		var _current_pp = $"{_hero.current_pp}"
		draw_sprite(_hero.sprite,-1,  _hero_ui_x, _hero_ui_y+font_get_size(FontNumbers)*2+ 3);	
		draw_set_font(FontNumbers);
		
		for(var _j = 0; _j < string_length($"{_hero.current_hp}"); _j++)
		{
			var _num = string_char_at($"{_hero.current_hp}", _j+1)
			
			draw_text_transformed(_hero_ui_x+_health_and_pp_Xoffset+_hoffset, _hero_ui_y+_health_and_pp_Yoffset,_num, 0.8, 0.8, 0)
			_hoffset += 5
		}
		_hoffset = 0
		
		for(var _j = 0; _j < string_length($"{_hero.current_pp}"); _j++)
		{
			var _num = string_char_at($"{_hero.current_pp}", _j+1)
			
			draw_text_transformed(_hero_ui_x+_health_and_pp_Xoffset +_hoffset, _hero_ui_y + font_get_size(FontNumbers)+_health_and_pp_Yoffset, _num, 0.8, 0.8, 0)
			_hoffset += 5
		}
		//draw_text_transformed(_hero_ui_x+_health_and_pp_Xoffset, _hero_ui_y+_health_and_pp_Yoffset,_current_hp, 0.8, 0.8, 0)
		//draw_text_transformed(_hero_ui_x+_health_and_pp_Xoffset, _hero_ui_y + font_get_size(FontNumbers)+_health_and_pp_Yoffset, $"{_hero.current_pp}", 0.8, 0.8, 0)
		
		draw_set_font(BattleGonzobo);
		
		_hero_ui_x += sprite_get_width(spr_UIs) + 5;
	}
}
#endregion

#region draw enemy selection arrow
// draw currently selected hero arrow
if(show_hero_selection_curve)
{
	hero_curve_percent += 1/60;
	if(hero_curve_percent > 1){hero_curve_percent -=1};
	var _position = animcurve_channel_evaluate(hero_arrow_curve, hero_curve_percent);
	var _start_y = _arrow_y + 2;
	var _end_y = _arrow_y - 2;
	var _distance = _end_y - _start_y;
	_arrow_y = _start_y + (_distance * _position);
}
_arrow_x =  _arrow_x + ((sprite_get_width(spr_UIs) + 5) * selected_hero)
draw_sprite(spr_selectarrow ,-1, _arrow_x, _arrow_y);

// draw battle selection arrow
var _selection = 10 * selected_option;
var _battle_arrow_x = _text_x - sprite_get_width(spr_btlarrow) - 2;
var _battle_arrow_y = _y  + _selection;
draw_sprite(spr_btlarrow, -1, _battle_arrow_x, _battle_arrow_y);
#endregion

#region draw enemy and do enemy animations
//draw enemies
for(var _i = 0; _i < enemy_amount; _i++)
{
	var _enemy = enemies[_i]
	_enemy._x = _enemy_x
	_enemy._y = _enemy_y
	
	if(enemy_hurt_animation_activation && current_enemy_animation == _i)
	{
	enemy_hurt_percent += 1/40;
	if(enemy_hurt_percent > 1){enemy_hurt_animation_activation=false; enemy_hurt_percent = 0;  do_after_animation = true efx = true}//enemy_hurt_percent -=1};
	var _position = animcurve_channel_evaluate(enemy_hurt_curve, enemy_hurt_percent);
	var _enemy_text_position = animcurve_channel_evaluate(enemy_hurt_text_curve, enemy_hurt_percent)
	var _start_x = _enemy_x - 2;
	var _end_x = _enemy_x;
	var _distance = _end_x - _start_x;
	_enemy._x = _start_x + (_distance * _position);
	
	var _start_y = _enemy_y
	var _end_y = _enemy_y - 10;
	var _text_distance = _end_y - _start_y
	var _text_y = _start_y + (_text_distance * _enemy_text_position);
	draw_text_color((_enemy._x +32), _text_y, enemy_damage_text, c_red, c_red, c_red, c_red, 0.8)
	
	
	}
	if(enemy_defense_animation_activation && current_enemy_animation == _i)
	{
	if(defense_curve_percent >= 1){defense_curve_percent = 0 enemy_defense_animation_activation = false do_after_animation = true;}
	defense_curve_percent += 1/40;
	
	var _position = animcurve_channel_evaluate(defense_animation, defense_curve_percent);
	var _enemy_text_position = animcurve_channel_evaluate(enemy_hurt_text_curve, defense_curve_percent);
	var _start_y = _enemy_y - 6;
	var _end_y = _enemy_y;
	var _distance = _end_y - _start_y;
	
	var _tstart_y = _enemy_y
	var _tend_y = _enemy_y - 10;
	var _text_distance = _tend_y - _tstart_y
	var _text_y = _tstart_y + (_text_distance * _enemy_text_position);
	draw_text_color((_enemy._x+32) , _text_y, enemy_defense_text, c_black, c_black, c_black, c_black, 1)
	draw_text_color((_enemy._x+32), _text_y, enemy_defense_text, c_teal, c_teal, c_teal, c_teal, 0.8)
	
	_enemy._y = _start_y + (_distance * _position);
	}
	if(enemy_attack_animation_activation && current_enemy_animation == _i)
	{
			var _position = animcurve_channel_evaluate(enemy_attack_animation, hero_hurt_percent);
			
			var _points = [[_enemy_x , _enemy_y-5],[_enemy_x , _enemy_y+30],[ _enemy_x+90 , _enemy_y+30]]
			var _t = hero_hurt_percent / 0.8;
			var _bezier_points = bezier(_points[0], _points[1], _points[2], _t);
			//var _start_x = _enemy_x + exp(3)
			var _start_x = _bezier_points[0];
			var _end_x = _enemy_x;
			//var _start_y = _enemy_y + 3
			var _start_y =_bezier_points[1];
			var _end_y = _enemy_y;
			var _distance_y = _end_y - _start_y;
			var _distance = _end_x - _start_x;
			_enemy._x = _start_x + (_distance * _position);
			_enemy._y = _start_y + (_distance_y * _position);
		
	}
	
	draw_sprite(_enemy.sprite, -1, _enemy._x , _enemy._y);
	if(enemy_amount > 1)
	{
		_enemy_x += 90
	}

}
#endregion

#region draw enemy selection arrow
// draw enemy arrow
if(show_enemy_arrow)
{
	enemy_curve_percent += 1/60;
	if(enemy_curve_percent > 1){enemy_curve_percent -=1};
	var _position = animcurve_channel_evaluate(enemy_arrow_curve, enemy_curve_percent);
	var _start_y = _enemy_arrow_y + 2;
	var _end_y = _enemy_arrow_y - 2;
	var _distance = _end_y - _start_y;
	_enemy_arrow_y = _start_y + (_distance * _position);

	_enemy_arrow_x = _enemy_arrow_x +(64/2)+ (90*selected_enemy) - (sprite_get_width(spr_selectarrow)/2)

	draw_sprite_ext(spr_selectarrow, -1, _enemy_arrow_x, _enemy_arrow_y, 1, -1, 0, c_white, 1);	

}
#endregion

#region draw effects
for (var _i=0; _i < party_count; _i++)
{
	var _party_member = party[_i];
	var _effect_pos = 0
	if(array_length(_party_member.effects) > 0)
	{
					
		for(var _j = 0; _j < array_length(_party_member.effects); _j++)
		{
			if(array_length(_party_member.effects) > 0)
				{
				
				var _effect = _party_member.effects[_j]
				
				draw_sprite_ext(_effect.effect_spr, 0, _party_member.position._x+_effect_pos, _party_member.position._y, 0.5, 0.5,0, c_white, 1)
				_effect_pos += 16*0.5
				}
		}
	}
}
for (var _i=0; _i < array_length(enemies); _i++)
	{
		var _enemy = enemies[_i];
		
			var _effect_pos = 0
			for(var _j = 0; _j < array_length(_enemy.effects); _j++)
			{
				if(array_length(_enemy.effects) > 0)
				{
				
				var _effect = _enemy.effects[_j]
				draw_sprite(_effect.effect_spr, 0, _enemy._x+_effect_pos, _enemy._y - sprite_get_width(_effect.effect_spr))
				_effect_pos += 16
				}
			}
		
	}
#endregion
		
#region draw flee screen
if(draw_flee_screen)
{
	var _flee_overlay_x = 50;
	var _flee_overlay_y = 30;
	var _flee_overlay_width =room_width - _flee_overlay_x;
	var _flee_overlay_height = room_height - _flee_overlay_y;
	var _rad = 30;
	
	var _flee_text = "YOU HAVE FLED :(";
	var _flee_text_x = room_width / 2 - (string_length(_flee_text)*fontsize) / 2
	var _flee_text_y = room_height / 2 - fontsize / 2
	
	
	draw_roundrect_color_ext(_flee_overlay_x, _flee_overlay_y, _flee_overlay_width, _flee_overlay_height, _rad, _rad, c_black, c_black, false)
	draw_text(_flee_text_x, _flee_text_y, _flee_text)
}
#endregion

#region draw battle textbox
// draw battle textbax
var _text_box_width = global.view_width - 10
var _text_box_height = 40
var _text_box_y_buffer = 100 + _text_box_height
var _rect_x = 5
var _rect_y = 5

var _gt = [new GameDialog($"* {text_to_draw}", "", battle_draw_sound)]

var _battle_text_y = _rect_y
var _drawn_txt = $"*{drawn_text}"
//var _txt_to_draw = $"*{text_to_draw}"
var _txt_x = (((_rect_x +_text_box_width)/ 2) - (string_length($"*{text_to_draw}")*fontsize)/2)

if draw_txt{	
	
if(!instance_exists(obj_textbox_v2)){
var _inst = instance_create_depth(0, 0, -99999, obj_textbox_v2, {current_dialog_block: _gt,}); 
with(_inst)
{
	in_battle= true;
	textbox_y = _rect_y;
	textbox_h = _text_box_height;
	textbox_w = _text_box_width;
	textbox_x = _rect_x;
	nathans_way = current_dialog_block[dialog_idx].dialog;
	nathans_way = nathans_textbox_fix(nathans_way, textbox_w);
	needs_next = false;
	textbox_sprite = spr_blacktxtboxtst;
	
}
}

draw_rectangle_color(_rect_x , _rect_y, + _rect_x + _text_box_width, _rect_y +_text_box_height, c_white, c_white, c_white, c_white, 1 )
draw_text((_rect_x +_text_box_width)/ 2 - (string_length(_drawn_txt)*fontsize)/2, _rect_y +2, _drawn_txt)
}


#endregion
