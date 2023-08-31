if state == "READY"{
	if (!dead) draw_self();	


draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_set_font(BattleGonzobo);

//draw_text(x - (sprite_width / 2), y, string(number));
//numberX = (x- (sprite_width / 2));
//draw_text(numberX, y + (sprite_height / 2), "x " + string(number));

if (stunned <= 0) && (!isasleep) {
image_blend = c_white;
}
else{
{
if (stunned > 0) image_blend = c_yellow;
if (isasleep) image_blend = c_blue;
if (stunned > 0) && (isasleep) image_blend = c_green;
}

}
}