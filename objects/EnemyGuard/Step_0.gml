if (curiousTimer > 0)
{
	curiousTimer--;
	if (!curious)
	{
		audio_play_sound(s_spotted,998,false);
		with(instance_create_depth(x,y,depth,ExclamationMarkSpotted))
		{
			creator = other;
		}
		curious = true;
	}
}
else if (curiousTimer <= 0)
{
	curious = false;
}
if (seesPlayer)
{
	seesPlayer = false;
	curiousTimer+=2;
	target_x = Player.x;
	target_y = Player.y;
	moveTimer = room_speed;
}
if (curiousTimer > curiousTimerMax)
{
	PlayerLostScreen("You've Been Caught");
}
if (!curious)
{
	// Inherit the parent event
	event_inherited();
}
else {
	enemy_pathfindToLocation(target_x, target_y);
}