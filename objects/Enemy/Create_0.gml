target_x = x;
target_y = y;
path = path_add();
x_locations = ds_list_create();
y_locations = ds_list_create();
wait_at_locations = ds_list_create();
moveTimer = 0;
moveSpd = 2;
isMoving = false;
onRoutine = true;
seesPlayer = false;
mySight = instance_create_depth(x,y,0,EnemyHearing);
with(mySight)
{
	creator = other;
}
mask_index = spr_playerCol;
sprite_index = spr_doctor;
image_xscale = 2;
image_yscale = 2;
