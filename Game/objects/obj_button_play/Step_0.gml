if pressed_ = true {
	time_++;	
}

if time_ > 0 and time_ < 8 {
	button_offset_ = lerp(button_offset_, shadow_offset_, 0.2);
} else {
	button_offset_ = lerp(button_offset_, 0, 0.2);	
}

if time_ >= 15 {
	time_ = 0;
	pressed_ = false
	
	room_goto(rm_level_menu);
	
	//button animation
	if object_exists(obj_button_pos_manager) {
		obj_button_pos_manager.new_room_ = true;
	}
}