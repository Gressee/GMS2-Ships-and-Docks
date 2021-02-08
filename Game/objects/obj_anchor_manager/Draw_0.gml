//in level menu
if room == rm_level_menu {
	
	//draw anchor display in level menu
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_color(make_color_rgb(40, 23, 11));
	
	draw_text(1830, 40, string(draw_anchors_));
	draw_sprite(spr_anchor_small, 0, 1870, 40);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);	
}

//in game
if room == rm_level {
	
	//draw anchor display 
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_color(make_color_rgb(40, 23, 11));
	
	draw_text(1830, 110, string(round(draw_anchors_)));
	draw_sprite(spr_anchor_small, 0, 1870, 110);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
}

