depth=-y;
image_speed = 0;
if (isMoving)
{
	image_speed = 0.8;
	if (direction < 90 || direction >= 270)
	{
		image_xscale = abs(image_xscale);
	}
	else {
		image_xscale = -abs(image_xscale);
	}
	if (path_position = 1)
	{
		isMoving = false;
		image_speed = 0;
	}
}

if (!isMoving)
{
	moveTimer--;
}

if (moveTimer <= 0)
{
	if (ds_list_size(wait_at_locations) > 0)
	{
		// get pos
		moveTimer = ds_list_find_value(wait_at_locations, 0);
		target_x = ds_list_find_value(x_locations, 0);
		target_y = ds_list_find_value(y_locations, 0);
	
		//rotate pos
		ds_list_delete(wait_at_locations, 0);
		ds_list_delete(x_locations, 0);
		ds_list_delete(y_locations, 0);
		ds_list_add(wait_at_locations, moveTimer);
		ds_list_add(x_locations, target_x);
		ds_list_add(y_locations, target_y);
	
		enemy_pathfindToLocation(target_x, target_y);
	}
}