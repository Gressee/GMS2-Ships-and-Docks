//spawn level and delete menu
if global.spawn_level_ = true {
	global.spawn_level_ = false;
	
	//spawn level at different difficulties
	switch(global.level_difficulty_) {
	
		case "easy" :
			scr_spawn_level_easy(global.current_level_);	
		break;
	
		case "medium" :
			scr_spawn_level_medium(global.current_level_);
		break;
	
		case "hard" :
			scr_spawn_level_hard(global.current_level_);
		break;
	
		case "expert" :
			scr_spawn_level_expert(global.current_level_);
		break;
		
	}
}

// ship detection (reset current grid numbers)
current_col_num_ = [0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] // zero at beginning!!!!!!
current_row_num_ = [0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

//ship detection
i = 1;
j = 1;

repeat(12) {
	j = 1;
	repeat(12) {
		check_col_= i;
		check_row_ = j;
		check_x_ = grid_x_ - box_width_/2 + check_col_ * box_width_;
		check_y_ = grid_y_ - box_width_/2 + check_row_ * box_height_;

		if position_meeting(check_x_, check_y_, obj_ship_box) {
			current_col_num_[check_col_]++;
			current_row_num_[check_row_]++;
		}
		j += 1;
	}
	i += 1;
}













