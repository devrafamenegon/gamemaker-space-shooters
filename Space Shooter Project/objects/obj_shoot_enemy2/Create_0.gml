/// @description 

//velocity and direction of shoot
speed = 4;

if(instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y); //player direction
}
else
{
	direction = 270;
}
//x1 = my X
//y1 = my Y
//x2 = target X
//y2 = target y


//angle of shoot
image_angle = 180;

//sound
audio_play_sound(snd_shoot_enemy, 6, false);

