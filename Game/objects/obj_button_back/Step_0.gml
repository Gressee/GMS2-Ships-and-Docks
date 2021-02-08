//also do smth when pressed button on phone
if keyboard_check_released(vk_backspace) {
	event_perform(ev_gesture_tap, 0);	
}


//button pressed
if pressed_ = true {
	time_++;	
}

if time_ > 0 and time_ < 8 {
	button_offset_ = lerp(button_offset_, shadow_offset_, 0.2);
} else {
	button_offset_ = lerp(button_offset_, 0, 0.2);	
}

if time_ >= 15 or keyboard_check_released(vk_backspace) {
	time_ = 0;
	pressed_ = false
	
	if room == rm_level_menu {
		room_goto(rm_main_menu);	
	}
	if room == rm_tutorial {
		room_goto(rm_main_menu);	
	}
	if room == rm_main_menu {
		game_end();	
	}
	
	//button animation
	if object_exists(obj_button_pos_manager) {
		obj_button_pos_manager.new_room_ = true;
	}
	
}