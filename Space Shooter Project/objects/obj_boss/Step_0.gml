 /// @description 

delay++;
timer++;

if(timer >= room_speed * 10)
{
	state = irandom(2);
	timer = 0;
}

if(life <= 0)
{
	instance_destroy();
}

//alternating states of the boss
switch(state)
{
	//state 1 -------------------------------------------------------------------
	case (0): 
	{
		if(delay == 45) 
		{	
			//configurating the shoots
			instance_create_layer(x, y, "Enemies", obj_shoot_enemy2);
			delay = 0;			
		}
		
		//moving the boss
		if(move == true) x -= 4
		else x += 4
		
		if(x > 672) move = true;
		if(x <= 128) move = false;
		
		break;
	}
	
	//state 2 -------------------------------------------------------------------
	case (1): 
	{
		//configurating the shoots
		if(delay == 40) instance_create_layer(x - 72, y, "Enemies", obj_shoot_enemy1);
		if(delay == 40) 
		{
			instance_create_layer(x + 72, y, "Enemies", obj_shoot_enemy1);
			delay = 0;
		}
		
		//moving the boss
		if(move == true) x -= 2
		else x += 2
		
		if(x > 672) move = true;
		if(x <= 128) move = false;
		
		break;
	}
	
	//state 3 ---------------------------------------------------------------------
	case (2):
	{
		if(delay == 40) instance_create_layer(x - 72, y, "Enemies", obj_shoot_enemy1);
		if(delay == 40) instance_create_layer(x + 72, y, "Enemies", obj_shoot_enemy1);
		if(delay == 50)
		{
			instance_create_layer(x, y, "Enemies", obj_shoot_enemy2);
			delay = 0;
		}
		break;
	}
	
	case (3):
	{
		if(y < 200)
		{
			y += 3
			
		}
		else
		{
			state = irandom(2);
			delay = 0;
			timer = 0;
			audio_play_sound(snd_boss, 2, true);
			
		}
	}
}