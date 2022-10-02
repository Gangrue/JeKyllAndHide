// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_spriting(){
	if (isMoving)
	{
		image_speed = 0.8;
		if (isMad)
		{
			image_speed += 0.4;
		}
	}
	else {
		image_speed = 0;
	}
	if (isMad)
	{
		sprite_index = spr_MrHide;
		if (Direction < 90 || Direction >= 270)
		{
			image_xscale = abs(image_xscale);
		}
		else {
			image_xscale = -abs(image_xscale);
		}
	}
	else {
		sprite_index = spr_DrJekill;
		if (Direction < 90 || Direction >= 270)
		{
			image_xscale = abs(image_xscale);
		}
		else {
			image_xscale = -abs(image_xscale);
		}
	}
}