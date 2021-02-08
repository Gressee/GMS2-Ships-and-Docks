//self + shadow
if global.level_exists_ = true {
	draw_sprite_ext(spr_button_back, 0, x+shadow_offset_, y+shadow_offset_, 1, 1, 0, c_gray, 0.5);
	draw_sprite_ext(spr_button_back_to_game, 0, x+button_offset_, y+button_offset_, 1, 1, 0, image_blend, image_alpha); 
}
				
