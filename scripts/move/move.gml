function move(x_speed, y_speed){
	var small_x_amount = 0.1 * sign(x_speed);
	var small_y_amount = 0.1 * sign(y_speed);
	if (place_meeting(x+x_speed,y,Wall))
	{		
		while(!place_meeting(x+small_x_amount,y,Wall))
		{
			x+=small_x_amount;
		}
		x_speed = 0;

	}
	if (place_meeting(x,y+y_speed,Wall))
	{
		while(!place_meeting(x,y+small_y_amount,Wall))
		{
			y+=small_y_amount;
		}
		y_speed = 0;
	}
	x+=x_speed;
	y+=y_speed;
}