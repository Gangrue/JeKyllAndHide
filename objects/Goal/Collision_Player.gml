Player.canMove = false;
Player.isMoving = false;
with(ElevatorDoor)
{
	audio_play_sound(s_elevator, 1001, false);
	image_speed = 0.8;
	GameController.floorNumber--;
}
instance_destroy();