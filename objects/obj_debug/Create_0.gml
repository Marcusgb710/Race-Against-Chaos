/// @description Insert description here
// You can write your code in this editor
enum PARTY{
	MISTY = 0,
	JON = 1,
	KELSI = 2,
	CORY = 3,
	
}


cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]); 
opacity = 0.8
text_box_x = cam_x;
text_box_y = cam_y;
text_box_w = cam_x + 288;
text_box_h = cam_y + font_get_size(Gonzobo)*2
console_commands = new Commands()
show = false;
command = "";
alphabet = string_split("A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0,.", ",")
start_close_timer = false;
close_timer = 0;
depth = -99999;




