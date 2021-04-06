/// @description 

hit = true;

//self-destruction
if(instance_exists(obj_player))
{
	instance_destroy();
}

obj_player.life -= 1;

/* ou

with(other)      with player, execute { life--}
{
	life--
}


