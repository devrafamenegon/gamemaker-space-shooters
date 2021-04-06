/// @description 

instance_create_layer(x, y, "Enemies", obj_explosion);

if(hit)
{
	global.enemies_destroyed++;
	obj_control.exp_current += 5;

	var chance = random(100);

	//7% chance
	if(chance > 93)
	{
		instance_create_layer(x, y, "Player", obj_power_up);
	}
}