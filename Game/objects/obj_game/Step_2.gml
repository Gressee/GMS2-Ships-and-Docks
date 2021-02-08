//compare results of grid numbers
l = 1;
confirm_value_ = 0;
repeat(12) {
	if (current_col_num_[l]) = (given_col_num_[l]) {
		confirm_value_ += 1;	
	}
	if (current_row_num_[l]) = (given_row_num_[l]) {
		confirm_value_ += 1;	
	}
	l += 1;
}

if confirm_value_ >= 24 {
	all_grid_num_correct_ = true;
} else {
	all_grid_num_correct_ = false;	
}


//check docked ships
if total_ships_ = docked_ships_ {
	all_ships_docked = true;	
} else {
	all_ships_docked = false;	
}

//level finshed
if all_grid_num_correct_ = true and all_ships_docked = true {
	
	if menu_spawned_ = false {
		menu_spawned_ = true;
		
		//delete buttons
		instance_destroy(obj_button_sound);
		instance_destroy(obj_button_menu);
		instance_destroy(obj_button_level_replay);
		//spawn menu
		instance_create_layer(room_width/2, room_height/2 - 82, "Buttons", obj_level_finished_text);
		instance_create_layer(room_width/2 - 150, room_height/2 + 130, "Buttons", obj_button_menu);
		instance_create_layer(room_width/2, room_height/2 + 130, "Buttons", obj_button_level_replay);
		instance_create_layer(room_width/2 + 150, room_height/2 + 130, "Buttons", obj_button_next_level);
		
		//audio 
		audio_play_sound(sou_level_finished, 2, false);
	}
	
	
	//anchors
	if anchors_added_ = false {
		anchors_added_ = true;
		
		var level_prev_solved_ = false;
		ini_open("data_saved.ini");
		
		switch(global.level_difficulty_) {
	
			case "easy" :
				level_prev_solved_ = ini_read_real("levels_solved_easy_", string(global.current_level_), false);
			break;
	
			case "medium" :
				level_prev_solved_ = ini_read_real("levels_solved_medium_", string(global.current_level_), false);
			break;
	
			case "hard" :
				level_prev_solved_ = ini_read_real("levels_solved_hard_", string(global.current_level_), false);
			break;
	
			case "expert" :
				level_prev_solved_ = ini_read_real("levels_solved_expert_", string(global.current_level_), false);
			break;
		
		}
		
		ini_close();
	
		if level_prev_solved_ = false {	
		
			obj_anchor_manager.anchors_ += total_ships_;
		
			//save anchor data
			ini_open("data_saved.ini");
			ini_write_real("anchor_management_", "anchors_", obj_anchor_manager.anchors_);
			ini_close();
		
		}
	}
	
	
	//save/load level solved system
	if levels_solved_saved_ = false {
		levels_solved_saved_ = true;
		
		ini_open("data_saved.ini");
		
		switch(global.level_difficulty_) {
	
			case "easy" :
				ini_write_real("levels_solved_easy_", string(global.current_level_), true);
			break;
	
			case "medium" :
				ini_write_real("levels_solved_medium_", string(global.current_level_), true);
			break;
	
			case "hard" :
				ini_write_real("levels_solved_hard_", string(global.current_level_), true);
			break;
	
			case "expert" :
				ini_write_real("levels_solved_expert_", string(global.current_level_), true);
			break;
		
		}
		
		ini_close();
	}
	
}


//reset number of docked ships
docked_ships_ = 0;