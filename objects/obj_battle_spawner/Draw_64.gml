#region READY

if (state == "READY"){

draw_set_font(BattleGonzobo);
fontSize = font_get_size(BattleGonzobo);
var BUFFER = 8;

#region TEXT

textX = surface_get_width(application_surface) / 2;
textY = surface_get_height(application_surface);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

//DRAW TEXTBOX
x1 = 0;
y1 = surface_get_height(application_surface);
x2 = x1 + surface_get_width(application_surface);
y2 = y1 - 64;

draw_rectangle(x1,y1,x2,y2,false);

draw_set_color(c_white);
draw_text(textX + shake_x, textY - ((fontSize + BUFFER) / 2) + shake_y, visible_string);

#endregion

#region DRAW PLAYER STATS

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(Statgonz);

xx = surface_get_width(application_surface) - string_width("HP: 999 / 999") + shake_x;

draw_text(xx, BUFFER + shake_y, "HP: " + string(hero.hp) + " / " + string(hero.hp_max));
draw_text(xx, (BUFFER * 2) + font_get_size(Statgonz) + shake_y, "PP: " + string(hero.pp) + " / " + string(hero.pp_max));

#endregion

}
#endregion