//drae self
draw_self();

//set text
if difficulty_to_unlock_ = "medium" {
	var draw_text_ = scr_load_text_language("anchor error message medium", global.language_);
	var anchors_unlock_ = obj_anchor_manager.anchors_unlock_medium_;
}
if difficulty_to_unlock_ = "hard" {
	var draw_text_ = scr_load_text_language("anchor error message hard", global.language_);
	var anchors_unlock_ = obj_anchor_manager.anchors_unlock_hard_;
}
if difficulty_to_unlock_ = "expert" {
	var draw_text_ = scr_load_text_language("anchor error message expert", global.language_);
	var anchors_unlock_ = obj_anchor_manager.anchors_unlock_expert_;
}

//draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font_anchor_error_message);
	
draw_text_ext(x, y - 95, draw_text_, 110, 1000);
	
// draw anchor to unlock
draw_set_halign(fa_right);
draw_text(x , y + 170, string(anchors_unlock_));
draw_sprite(spr_anchor_big, 0, x + 40, y + 170);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
