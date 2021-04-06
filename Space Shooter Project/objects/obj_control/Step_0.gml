/// @description 

//upping level
if(exp_current >= exp_next)
{
	global.lvl++;
	exp_next *= 1.8;
}

//checking heigher pontuation
if(exp_current >= global.higher_pt)
{
	global.higher_pt = exp_current;
}

//checking if boss exists
if(global.lvl >= 5 && boss == false)
{
	instance_create_layer(room_width/2, -700, "Enemies", obj_boss);
	instance_destroy(obj_enemy01);
	instance_destroy(obj_enemy02);
	audio_stop_all();
	boss = true;
}