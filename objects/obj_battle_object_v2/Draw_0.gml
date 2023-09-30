/// @description Insert description here
// You can write your code in this editor

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

// draw hero sprite boxes
for(var _i = 0; _i < array_length(party); _i++)
{
	var _hero = party[_i]
	if(_hero.in_party)
	{
		//draw damage numbers
		if(hurt_hero && picked_hero == _i)
		{
		show_debug_message(picked_hero)
		var _hero_damage_text;
		var _damage_text = 0;  
		var _hero_damage_text_x = (_hero_ui_x + (sprite_get_width(spr_UIs)*(picked_hero+1))) / 2
		var _hero_damage_text_y = _hero_ui_y + font_get_size(FontNumbers)
		hero_hurt_percent += 1/60;
		if(hero_hurt_percent > 1.2){hurt_hero = false;heal_hero = false;defend_hero = false; hero_hurt_percent = 0};
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
		draw_set_font(FontNumbers);
		draw_text(_hero_ui_x, _hero_ui_y, $"HP:{_hero.current_hp}")
		draw_text(_hero_ui_x, _hero_ui_y + font_get_size(FontNumbers), $"PP:{_hero.current_pp}")
		draw_set_font(BattleGonzobo);
		draw_sprite(_hero.sprite,-1,  _hero_ui_x, _hero_ui_y+font_get_size(FontNumbers)*2+ 3);	
		_hero_ui_x += sprite_get_width(spr_UIs) + 5;
	}
}




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


//draw enemies
for(var _i = 0; _i < enemy_amount; _i++)
{
	var _enemy = enemies[_i]
	_enemy._x = _enemy_x
	_enemy._y = _enemy_y
	
	if(enemy_hurt_animation_activation && current_enemy_animation == _i)
	{
	enemy_hurt_percent += 1/40;
	if(enemy_hurt_percent > 1){enemy_hurt_animation_activation=false; enemy_hurt_percent = 0;  do_after_animation = true;}//enemy_hurt_percent -=1};
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
	draw_sprite(_enemy.sprite, -1, _enemy._x , _enemy._y);
	if(enemy_amount > 1)
	{
		_enemy_x += 90
	}

}

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

//flee screen
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