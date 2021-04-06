/// @description

if(room == rm_points)
{
	draw_set_font(fnt_title);  
	draw_set_halign(fa_center);
	draw_text(room_width/2, 150, "Pontuação");
	draw_set_font(fnt_game_data);
	draw_text(room_width/2, (room_height/2) - 40, "Maior pontuação: " + string(global.higher_pt));
	draw_text(room_width/2, (room_height/2) , "Inimigos Destruídos: " + string(global.enemies_destroyed));
	
	
	draw_set_font(fnt_show);  //reset default
	draw_set_halign(fa_left); //reset default
}