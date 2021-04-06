/// @description

if(y >= 0 && inscreen == false)
{
	alarm[0] = room_speed * random_range(0.2, 1);	
	inscreen = true;
}

if(inscreen == true && y > room_height/3 && moving == false)
{
	if(x > room_width/2)
	{
		hspeed = -4;
		moving = true;
	}
	else
	{
		hspeed = 4;
		moving = true;
	}
}

//destroy
if(y > room_height + 64)
{
	instance_destroy(other);
}