/// @description configurating the shoot

instance_create_layer(x, y, "Enemies", obj_shoot_enemy1);

alarm[0] = room_speed * random_range(1.5, 3);
