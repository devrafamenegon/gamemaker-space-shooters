/// @description 

//var yy = (y - sprite_yoffset) + sprite_height/2;   //y == 0 >> y height/2    //find middle center y

var explosion = instance_create_layer(x, y - 40, "Enemies", obj_explosion);

explosion.image_xscale = 2.5;
explosion.image_yscale = 2.5;
