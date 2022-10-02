player_create_movement();
player_create_stats();
instance_create_depth(x,y,depth,Camera);
myLight = instance_create_depth(x,y,depth,LightFollowerPlayer);
with(myLight)
{
	creator = other;
}
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
mask_index = spr_playerCol;
