/// @description

//defining font
draw_set_font(fnt_show);
//show current level
draw_text(20, 20, "Level: " + string(global.lvl));                 

//show current exp
draw_text(20, 40, "Exp: " + string(exp_current));

//show next exp
draw_text(20, 60, "Next: " + string(int64(exp_next)));

draw_set_halign(fa_left);