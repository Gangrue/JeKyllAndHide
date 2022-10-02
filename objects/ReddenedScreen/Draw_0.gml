var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
draw_sprite_stretched_ext(spr_redScreen,0,vx,vy,vw,vh,c_white,image_alpha);