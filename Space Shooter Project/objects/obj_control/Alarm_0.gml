/// @description create enemies
if(boss == false)
{
	//random number of enemies what spawning
	var random_enemies = random_range(1, 6) * global.lvl;

	repeat(random_enemies)
	{

		//random spawn enemies
		var random_x = random_range(32, room_width -32);
		var random_y = random_range(-64, -1024);

		//probability of spawn enemy02
		var probability = random(10) * global.lvl;
		if(probability > 25)
		{
			var enemy = instance_create_layer(random_x, random_y, "Enemies", obj_enemy02);
			enemy.speed = random_range(2, 4);
		}
	
		//if the probability is less than 25
		else
		{
			var enemy = instance_create_layer(random_x, random_y, "Enemies", obj_enemy01);
			enemy.speed = random_range(2, 4);
		}
	}

	//loop this
	alarm[0] = (random_range(2, 12) * room_speed);
}
