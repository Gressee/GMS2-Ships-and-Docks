//self + shadow
draw_sprite_ext(spr_button_level, 0, x+shadow_offset_, y+shadow_offset_, 1, 1, 0, c_gray, 0.5);
draw_sprite_ext(spr_button_level, sub_image_, x+button_offset_, y+button_offset_, 1, 1, 0, image_blend, image_alpha); 

//number
draw_set_font(font_grid_num);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x + button_offset_, y + button_offset_, level_);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
