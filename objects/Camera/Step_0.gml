if(instance_exists(Player))
{
	var target_x = Player.x;
	var target_y = Player.y;

	x = x + (target_x-x)/7;
	y = y + (target_y-y)/7;
	x = round(x);
	y = round(y);
	if (Player.isMad)
	{
		randomShakeEffect_x = Player.madTimer/6;
		randomShakeEffect_y = Player.madTimer/6;
		x += randomShakeEffect_x;
		y += randomShakeEffect_y;
		var get_dist = (point_distance(0,0,randomShakeEffect_x,randomShakeEffect_y)/4)*3;
		var randomDirection = random(360);
		randomShakeEffect_x = lengthdir_x(get_dist,randomDirection);
		randomShakeEffect_y = lengthdir_y(get_dist,randomDirection);
	}
}