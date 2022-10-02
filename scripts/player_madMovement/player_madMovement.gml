// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_madMovement(){
	isMoving = false;
	if (instance_exists(Enemy))
	{
		var nearestEnemy = instance_nearest(x,y,Enemy);
		var p_dist = point_distance(x,y, nearestEnemy.x, nearestEnemy.y)
		if (p_dist < 640)
		{
			var p_d = point_direction(x,y, nearestEnemy.x, nearestEnemy.y);
			Direction = p_d;
			var h_speed = lengthdir_x(runSpd*global.gameSpeed, p_d);
			var v_speed = lengthdir_y(runSpd*global.gameSpeed, p_d);
			move(h_speed,v_speed);
			isMoving = true;
		}
	}
	if (!isMoving)
	{
		var p_d = Direction;
		var h_speed = lengthdir_x(runSpd*global.gameSpeed, p_d);
		var v_speed = lengthdir_y(runSpd*global.gameSpeed, p_d);
		if (boosted)
		{
			h_speed *= 1.5;
			v_speed *= 1.5;
		}
		move(h_speed,v_speed);
		isMoving = true;
	}
}