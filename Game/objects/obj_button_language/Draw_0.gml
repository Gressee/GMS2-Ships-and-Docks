//draw menu
draw_set_alpha(1);
draw_set_color(make_color_rgb(0, 102, 128));
draw_set_font(font_language_menu);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);

if menu_open_ = true {
	//draw buttons
	//draw_set_alpha(menu_alpha_);
	draw_sprite_ext(spr_button_language_select, 0, button_left_x_+10, menu_y_+10, -1, 1, 0, c_gray, 0.5);
	draw_sprite_ext(spr_button_language_select, 0, button_right_x_+10, menu_y_+10, 1, 1, 0, c_gray, 0.5);
	draw_sprite_ext(spr_button_language_select, 0, button_left_x_ + button_left_offset_, menu_y_ + button_left_offset_, -1, 1, 0, image_blend, menu_alpha_);
	draw_sprite_ext(spr_button_language_select, 0, button_right_x_ + button_right_offset_, menu_y_ + button_right_offset_, 1, 1, 0, image_blend, menu_alpha_);
	
	//text
	draw_set_color(make_color_rgb(40, 23, 11));
	draw_set_alpha(menu_alpha_);
	draw_text(menu_x_, menu_y_, string(menu_languages_[selected_index_]));	
	draw_set_alpha(1);
}
	


//reset draw align
draw_set_halign(fa_left);
draw_set_valign(fa_top);



//self + shadow (that menu goes under button at open and close)
draw_sprite_ext(spr_button_language, 0, x+shadow_offset_, y+shadow_offset_, 1, 1, 0, c_gray, 0.5);
draw_sprite_ext(spr_button_language, 0, x+button_offset_, y+button_offset_, 1, 1, 0, image_blend, image_alpha);