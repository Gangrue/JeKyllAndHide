// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function door_unlock(){
	locked = false;
	with(LockedDoor)
	{
		if (point_distance(x,y,other.x,other.y) < 96 && locked)
		{
			door_unlock();
		}
	}
	instance_destroy();
}