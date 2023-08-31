var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p = .5;

draw_sprite(spr_sunnydayPar, 0, _camx, _camy-64);

draw_sprite_tiled(spr_sunnydayPar,1, _camx*_p, 88);