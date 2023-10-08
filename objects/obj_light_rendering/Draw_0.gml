/// @description 

depth = -9999;

cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);

if (!surface_exists(lighting_surface))
{
	lighting_surface = surface_create(cam_w, cam_h)
}

surface_set_target(lighting_surface);

draw_clear_alpha(col, intensity);

with(obj_light){
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, col, intensity);
	
	gpu_set_blendmode(bm_normal);
}



surface_reset_target();

draw_surface(lighting_surface,cam_x,cam_y);