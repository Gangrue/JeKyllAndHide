image_alpha=1;
if (!instance_exists(screenText) && instance_exists(Player))
{
	with(instance_create_depth(Player.x,Player.y,-room_height*2,screenText))
	{
		text = "Floor " + string(GameController.floorNumber);
		isDecay = true;
	}
}