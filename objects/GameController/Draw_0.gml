var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0])/2;
var vh = camera_get_view_height(view_camera[0])/2;
if (instance_exists(Player))
{
	var seconds = floor(Player.madTimer/(room_speed)*2);
	var milliseconds = (Player.madTimer*2)%60;

	draw_sprite_stretched(spr_timeBar,0,vx+5,vy+5,vw*2-10,36);
	if (!Player.isMad) {
		draw_sprite_stretched(spr_timeBar,1,vx+5,vy+5,vw*2*(Player.madTimer/Player.saneTimerMax)-10,36);
		draw_set_color(c_yellow);
	}
	else {
		draw_sprite_stretched(spr_timeBar,2,vx+5,vy+5,vw*2*(Player.madTimer/Player.madTimerMax)-10,36);
		draw_set_color(c_red);

	}
	draw_set_font(font_Powerful);
	draw_text(vx-96+vw*2,vy+48,string(floor(seconds/60)) + ":" + string(seconds%60) + ":" + string(milliseconds));
	

	for(var i=0; i<Player.keys; i++)
	{
		if (Player.gotKeyTimer > 0 && i == Player.keys-1)
		{
			var gotKeyExtraScale = Player.gotKeyTimer;
			Player.gotKeyTimer /= 1.25;
			Player.gotKeyTimer = floor(Player.gotKeyTimer);
			draw_sprite_ext(spr_keyGUI, 1, vx+96 + (i*48),vy+48,2+gotKeyExtraScale,2+gotKeyExtraScale,0,c_white,1);
		}
		else {
			draw_sprite_ext(spr_keyGUI, 0, vx+96 + (i*48),vy+48,2,2,0,c_white,1);
		}
	}
	
	if (Player.removeKeyTimer > 0)
	{
			var removeKeyExtraScale = Player.removeKeyTimerMax - Player.removeKeyTimer;
			Player.removeKeyTimer /= 1.25;
			Player.removeKeyTimer = floor(Player.removeKeyTimer);
			draw_sprite_ext(spr_keyGUI, 1, vx+96 + (Player.keys*48),vy+48,2+removeKeyExtraScale,2+removeKeyExtraScale,0,c_white,1);
	}
}