if (instance_exists(Player) && Player.isMad)
{
	image_alpha = 0.333 - (1 - (Player.madTimer/Player.madTimerMax));
}
else {
	instance_destroy();
}