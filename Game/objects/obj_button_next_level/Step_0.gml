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

	//reset level
	room_restart();
	instance_destroy(obj_ship);
	instance_destroy(obj_dock_box);
	
	//because of tutorial it might be not there
	if instance_exists(obj_game) {
		instance_destroy(obj_game);
	}
	
	instance_create_layer(x, y, "Invisible", obj_game);

	//go to next level
	var max_level_ = 0;
	switch(global.level_difficulty_) {
	
		case "easy" :
		max_level_ = max_level_easy_;
		break;
	
		case "medium" :
		max_level_ = max_level_medium_;
		break;
	
		case "hard" :
		max_level_ = max_level_hard_;
		break;
	
		case "expert" :
		max_level_ = max_level_expert_;
		break;
		
	}
	
	
	if global.current_level_ < max_level_ {
		global.current_level_ += 1;
		global.spawn_level_ = true;
	} else { //what to to if at end of levels of one dufficulty
		room_goto(rm_level_menu);
	}
	
	//ads
	obj_ads.game_break_ = true;

}