event_inherited();
if room == PortVinai || room == PortVinai2
{
image_blend = c_orange;

draw_sprite_general(sprite_index, self.image_index, 1, 1, sprite_width, sprite_height-8, x-16, y+76, -self.image_xscale, self.image_yscale, 180, c_black, c_black, c_black, c_black, 0.25);

}
else
{
image_blend = c_white;
}
