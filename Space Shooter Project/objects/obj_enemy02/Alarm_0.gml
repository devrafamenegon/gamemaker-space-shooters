/// @description configurating the shoot

if(instance_exists(obj_player))
{
	if(y < obj_player.y)
	{
		instance_create_layer(x, y, "Enemies", obj_shoot_enemy2);
	}
}

alarm[0] = room_speed * random_range(2, 4);
