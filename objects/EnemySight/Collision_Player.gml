with(Player)
{
	isSeen = true;
}
if (creator != noone && instance_exists(creator))
{
	if (!collision_line(x,y,Player.x,Player.y, Wall, true, false))
	{
		with(creator)
		{
			seesPlayer = true;
		}
	}
}