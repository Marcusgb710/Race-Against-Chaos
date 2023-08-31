var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

//var _p = .99;
//var _p2 = .95;
draw_sprite(spr_PortVinai, -1, _camx, _camy-48);
//draw_sprite(spr_PortVinai, 1, _camx/_p, _camy*_p-64);
//draw_sprite(spr_PortVinai, 2, _camx*_p2, _camy-64);