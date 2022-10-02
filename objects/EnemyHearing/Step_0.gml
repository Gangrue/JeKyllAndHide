if (instance_exists(Player))
{
	var p_dist = point_distance(x,y,Player.x,Player.y);
	if (p_dist < sprite_width)
	{
		image_alpha = 1 - (p_dist / sprite_width);
	}
	else {
		image_alpha = 0;
	}
}
else {
	image_alpha = 0;
}

// Inherit the parent event
event_inherited();

