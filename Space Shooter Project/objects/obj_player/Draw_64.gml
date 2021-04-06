/// @description 

//system life
var n_life = 1;
repeat(life)
{
	draw_sprite_ext(sprite_index, image_index, 25 * n_life, room_height - 50, .3, .3, image_angle, c_white, .7)
	n_life++;
}


//system shield
var n_shield = 1;
repeat(qtd_shield)
{
	draw_sprite_ext(spr_shield, 1, room_width - (30*n_shield), room_height - 50, .15, .15, image_angle, c_white, 1)
	n_shield++;
}
