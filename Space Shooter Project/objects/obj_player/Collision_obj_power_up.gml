/// @description

//destroying other
instance_destroy(other);

//Upping level shoot from player
if(lvl_shoot < 5)
{
	lvl_shoot++;
}
else
{
	obj_control.exp_current += 25;	
}
