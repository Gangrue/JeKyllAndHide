// Inherit the parent event
event_inherited();
curious = false;
curiousTimerMax = room_speed*1;
curiousTimer = 0;
instance_destroy(mySight);
mySight = instance_create_depth(x,y,0,EnemySight);
with(mySight)
{
	creator = other;
}
sprite_index = spr_soldier;
mask_index = spr_playerCol;
