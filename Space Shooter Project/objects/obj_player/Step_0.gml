/// @description configurating the player

var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var shoot = keyboard_check_pressed(vk_space);
var shield = keyboard_check_pressed(ord("E"));

//tests
if(keyboard_check_pressed(ord("P"))) lvl_shoot++;
if(keyboard_check_pressed(ord("O"))) lvl_shoot--;

//configurating shield
if(shield && qtd_shield > 0)
{
	instance_create_layer(x, y, "Player", obj_shield);
	qtd_shield--;
}

/*

//horizontal
if (left) x -= vel
if(right) x += vel

//vertical
if(up) y -= vel
if(down) y += vel

*/

//horizontal-------------------

//checking the side
var velh = (right-left) * vel;        //(0 - 0) * 3 = 0
//applying the velocity
x += velh;

//vertical---------------------

//checking the direction 
var velv = (down-up) * vel;          //(0 - 0) * 3 = 0 
//applying the velocity
y+= velv;


//shoot 1 ------------
if(lvl_shoot == 1)
{
	
	if(shoot)
	{
		instance_create_layer(x, y, "player", obj_shoot1);
	}  
}

//shoot 2 ------------
else if(lvl_shoot == 2)
{	
	
	if(shoot)
	{	
		var shoot_direction = instance_create_layer(x + 20, y, "player", obj_shoot2);
		shoot_direction.hspeed = 4;
		
		var shoot_direction = instance_create_layer(x - 20, y, "player", obj_shoot2);
		shoot_direction.hspeed = -4;
	}
}

//shoot 3 ------------
else if(lvl_shoot == 3)
{
	if(shoot)
	{
		//shoot 1
		instance_create_layer(x, y, "player", obj_shoot1);
		
		//shoot 2
		var shoot_direction = instance_create_layer(x + 20, y, "player", obj_shoot2);
		shoot_direction.hspeed = 4;
		var shoot_direction = instance_create_layer(x - 20, y, "player", obj_shoot2);
		shoot_direction.hspeed = -4;
	}
}

//shoot 4 ------------
else if(lvl_shoot == 4)
{
	if(shoot)
	{
		var val = 20;
		repeat(3)
		{
			var shoot_direction = instance_create_layer(x, y, "player", obj_shoot1);
			shoot_direction.direction = 90 + val;
			shoot_direction.image_angle = val;
			val -= 20;
		}
				
	}
}

//shoot 5 ------------
else if(lvl_shoot == 5)
{
	if(shoot)
	{
		var val = 20;
		repeat(3)
		{
			var shoot_direction = instance_create_layer(x, y, "player", obj_shoot1);
			shoot_direction.direction = 90 + val;
			shoot_direction.image_angle = val;
			val -= 20;
		}
		
		var shoot_direction = instance_create_layer(x + 20, y, "player", obj_shoot2);
		shoot_direction.hspeed = 4;
		var shoot_direction = instance_create_layer(x - 20, y, "player", obj_shoot2);
		shoot_direction.hspeed = -4;
	}
}


//sound shoot player
if(shoot)
{
	audio_play_sound(snd_shoot_player, 10, false)
}
	

//life system
if(life <= 0) instance_destroy();