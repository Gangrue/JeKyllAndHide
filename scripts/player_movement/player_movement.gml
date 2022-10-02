// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	var h_speed = (get_key_press_right() - get_key_press_left())*moveSpd*global.gameSpeed;
	var v_speed = (get_key_press_down() - get_key_press_up())*moveSpd*global.gameSpeed;
	if (h_speed!=0 && v_speed!=0)
	{
		h_speed *= 0.707;
		v_speed *= 0.707;
	}
	isMoving = false;
	if (h_speed!=0 || v_speed!=0)
	{
		isMoving = true;
		Direction = point_direction(0,0,h_speed,v_speed);
	}
	move(h_speed,v_speed);
}