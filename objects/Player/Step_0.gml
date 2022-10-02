depth=-y;
if (canMove)
{
	if (isMoving)
	{
		stepTimer-=(isMad) ? 3 : 1;
		if (stepTimer <= 0)
		{
			audio_play_sound(s_step,100,false);
			stepTimer = stepTimerMax;
		}
	}
	
	player_determineIsMad();
	if (isMad)
	{
		player_madMovement();
		blurTrailTimer--;
		if (blurTrailTimer <= 0)
		{
			blurTrailTimer = blurTrailTimerMax;
			with(instance_create_depth(x,y,depth,ShadowBlur))
			{
				sprite_index = other.sprite_index;
				image_xscale = other.image_xscale;
				image_yscale = other.image_yscale;
				image_speed = other.image_speed;
				image_index = other.image_index;
			}
		}
	}
	else {
		player_movement();
	}
}
player_spriting();