//button press
if pressed_ = true {
	time_++;	
}

if time_ > 0 and time_ < 8 {
	button_offset_ = lerp(button_offset_, shadow_offset_, 0.2);
} else {
	button_offset_ = lerp(button_offset_, 0, 0.2);	
}

if time_ = 6 {
	time_ = 0;
	pressed_ = false;

	if menu_open_ = true {
		menu_open_ = false;
	} else {
		menu_open_ = true;	
	}

}


///////////////////////////////////////////////////////////////////////////////
//menu 
if menu_open_ = true {
	// left button pressed
	if mouse_check_button_pressed(mb_left) and scr_button_place_meeting(button_left_x_-56, menu_y_-56, button_left_x_+56, menu_y_+56) {
		selected_index_ -= 1;
		button_left_pressed_ = true;
		
		//audio
		audio_play_sound(sou_click, 1, false);
	}
	
	//right button check
	if mouse_check_button_pressed(mb_left) and scr_button_place_meeting(button_right_x_-56, menu_y_-56, button_right_x_+56, menu_y_+56) {
		selected_index_ += 1;
		button_right_pressed_ = true;
		
		//audio
		audio_play_sound(sou_click, 1, false);
	}
	
	//animation
	if button_left_pressed_ {
		button_left_time_ ++;
	}
	if button_right_pressed_ {
		button_right_time_ ++;
	}
	
	
	if button_left_time_ > 0 and button_left_time_ < 7 {
		button_left_offset_ = lerp(button_left_offset_, 10, 0.2);
	} else {
		button_left_offset_ = lerp(button_left_offset_, 0, 0.2);
	}
	if button_right_time_ > 0 and button_right_time_ < 7  {
		button_right_offset_ = lerp(button_right_offset_, 10, 0.2);
	} else {
		button_right_offset_ = lerp(button_right_offset_, 0, 0.2);
	}
	
	
	if button_left_time_ > 15 {
		button_left_time_ = 0;
		button_left_pressed_ = false;
	}
	if button_right_time_ > 15 {
		button_right_time_ = 0;
		button_right_pressed_ = false;
	}

	
	//index stay in range
	if selected_index_ > 2 {
		selected_index_ = 0;	
	}
	if selected_index_ < 0 {
		selected_index_ = 2;	
	}
	
	//save language in ini
	ini_open("saved_data.ini");
	ini_write_real("language", "selected_index_", selected_index_);
	ini_close();
	
	//set gloabal language
	switch(menu_languages_[selected_index_]) {
		case "English":
		global.language_ = "english";
		break;
		
		case "Deutsch":
		global.language_ = "german";
		break;
		
		case "Français":
		global.language_ = "french";
		break;
		
	}
}

//animation for menu in and out
button_left_x_ = menu_x_ - 250;
button_right_x_ = menu_x_ + 250;

if menu_open_ = true {
	menu_x_ = lerp(menu_x_, x+400, 0.4);
	menu_alpha_ = lerp(menu_alpha_, 1, 0.9);
} 
if menu_open_ = true and pressed_ = true {
	menu_x_ = lerp(menu_x_, x, 0.4);
	menu_alpha_ = lerp(menu_alpha_, 0, 0.9);
}




