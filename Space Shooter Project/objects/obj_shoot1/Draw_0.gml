/// @description

//autodesign
draw_self();

//blend design
gpu_set_blendmode(bm_add)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + 1, image_yscale + .5, image_angle, color, .7)
gpu_set_blendmode(bm_normal)
           