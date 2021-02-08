//self + shadow
//draw_sprite_ext(spr_button_level_difficulty, 0, x+shadow_offset_, y+shadow_offset_, 1, 1, 0, c_gray, 0.5);
//draw_sprite_ext(spr_button_level_difficulty, 0, x+button_offset_, y+button_offset_, 1, 1, 0, image_blend, image_alpha); 


//draw text on button
draw_set_color(make_color_rgb(40, 23, 11));
draw_set_font(font_level_difficulty);
draw_set_halign(fa_center);
draw_set_valign(fa_middle)

switch(level_difficulty_) {
	
	case "easy" :
		var text_ = scr_load_text_language("difficulty easy", global.language_);
		draw_text(x+button_offset_, y+button_offset_, text_);
	break;
	
	case "medium" :
		var text_ = scr_load_text_language("difficulty medium", global.language_);
		draw_text(x+button_offset_, y+button_offset_, text_);
	break;
	
	case "hard" :
		var text_ = scr_load_text_language("difficulty hard", global.language_);
		draw_text(x+button_offset_, y+button_offset_, text_);
	break;
	
	case "expert" :
		var text_ = scr_load_text_language("difficulty expert", global.language_);
		draw_text(x+button_offset_, y+button_offset_, text_);
	break;
		
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);