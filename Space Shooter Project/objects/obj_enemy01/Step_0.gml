/// @description

if(y >= 0 && inscreen == false)
{
	alarm[0] = room_speed * random_range(0.2, 1);	
	inscreen = true;
}

//destroy
if(y > room_height + 64)
{
	instance_destroy(other);
}