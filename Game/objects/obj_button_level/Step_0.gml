//animation when presed
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
	pressed_ = false;
	
	//ads
	obj_ads.game_break_ = true;
	
	//do something
	global.current_level_ = level_;
	global.spawn_level_ = true;
	global.reset_level_ = true; 
	global.level_exists_ = true;
	room_goto(rm_level);	
}

//////////////////////////////////////////////////////////////////////////////////////////

//set sliding offset once
if offset_set_ = false {
	offset_set_ = true;
	switch(difficulty_) {
	
		case "easy" :
		offset_x_ = x - obj_button_level_spawner.or_easy_x_;
		break;
	
		case "medium" :
		offset_x_ = x - obj_button_level_spawner.or_medium_x_;
		break;
	
		case "hard" :
		offset_x_ = x - obj_button_level_spawner.or_hard_x_;
		break;
	
		case "expert" :
		offset_x_ = x - obj_button_level_spawner.or_expert_x_;
		break;
	}
}



//difficulty switch buttons sliding
switch(difficulty_) {
	
	case "easy" :
	x = offset_x_ + obj_button_level_spawner.or_easy_x_;
	break;
	
	case "medium" :
	x = offset_x_ + obj_button_level_spawner.or_medium_x_;	
	break;
	
	case "hard" :
	x = offset_x_ + obj_button_level_spawner.or_hard_x_;	
	break;
	
	case "expert" :
	x = offset_x_ + obj_button_level_spawner.or_expert_x_;	
	break;
}




//fly in animation
animation_time_++;

//target y
if level_ <= 48 {
	target_y_ = 770;	
}
if level_ <= 36 {
	target_y_ = 620;	
}
if level_ <= 24 {
	target_y_ = 470;	
}
if level_ <= 12 {
	target_y_ = 320;
}

//delay
if level_ <= 48 {
	animation_delay_ = 5 * (level_ - 36);	
}
if level_ <= 36 {
	animation_delay_ = 5 * (level_ - 24);	
}
if level_ <= 24 {
	animation_delay_ = 5 * (level_ - 12);	
}
if level_ <= 12 {
	animation_delay_ = 5 * (level_ - 0);	
}

//lerp
if animation_time_ > animation_delay_ {
	y = lerp(y, target_y_, 0.3);
}




//make button green if level solved
switch(difficulty_) {
	
	case "easy" :
		if global.levels_solved_easy_[level_] = false {
			sub_image_ = 0;
		} else {
			sub_image_ = 1;
		}
	break;
	
	case "medium" :
		if global.levels_solved_medium_[level_] = false {
			sub_image_ = 0;
		} else {
			sub_image_ = 1;
		}
	break;
	
	case "hard" :
		if global.levels_solved_hard_[level_] = false {
			sub_image_ = 0;
		} else {
			sub_image_ = 1;
		}
	break;
	
	case "expert" :
		if global.levels_solved_expert_[level_] = false {
			sub_image_ = 0;
		} else {
			sub_image_ = 1;
		}
	break;
		
}






//go to secret lvl
if keyboard_check_pressed(vk_up) {
	global.current_level_ = "test";
	global.spawn_level_ = true;
	room_goto(rm_level);		
}