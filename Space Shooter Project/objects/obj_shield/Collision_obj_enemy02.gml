/// @description 

//exp ++
obj_control.exp_current += 2;

var chance = random(100);

//5% chance
if(chance > 97)
{
	instance_create_layer(x, y, "Player", obj_power_up);
}

instance_destroy(other);
