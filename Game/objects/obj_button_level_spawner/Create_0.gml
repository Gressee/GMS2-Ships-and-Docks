//varibles foe sliding
or_easy_x_ = 0;
or_medium_x_ = 2200;
or_hard_x_ = 4400;
or_expert_x_ = 6600;

global.level_difficulty_ = "easy";


//macro for max level
#macro max_level_easy_ 19
#macro max_level_medium_ 19
#macro max_level_hard_ 19
#macro max_level_expert_ 16

//create global.levels solved arrays
ini_open("data_saved.ini")

	i = 1;
	repeat(max_level_easy_) {
		global.levels_solved_easy_[i] = ini_read_real("levels_solved_easy_", string(i), false);
		i++;
	}
	
	i = 1;
	repeat(max_level_medium_) {
		global.levels_solved_medium_[i] = ini_read_real("levels_solved_medium_", string(i), false);
		i++;	
	}
	
	i = 1;
	repeat(max_level_hard_) {
		global.levels_solved_hard_[i] = ini_read_real("levels_solved_hard_", string(i), false);
		i++;	
	}
	
	i = 1;
	repeat(max_level_expert_) {
		global.levels_solved_expert_[i] = ini_read_real("levels_solved_expert_", string(i), false);
		i++;	
	}

ini_close();


//spawn buttons (y is neg bc of fly in animation)
//easy
var spawn_x_ = 135 + or_easy_x_;
var spawn_y_ = -400;
var spawn_level_ = 1;
var spawn_difficulty_ = "easy";
repeat(max_level_easy_) {

	var spawn_button_ = instance_create_layer(spawn_x_, spawn_y_, "Buttons", obj_button_level);
	spawn_button_.level_ = spawn_level_;
	spawn_button_.difficulty_ = spawn_difficulty_;
	
	spawn_level_ ++;
	spawn_x_ += 150;
	
	if spawn_x_ > 1800 {
		spawn_x_ = 135 + or_easy_x_;
		spawn_y_ += 150
	} 		
}

//medium
var spawn_x_ = 135 + or_medium_x_;
var spawn_y_ = -400;
var spawn_level_ = 1;
var spawn_difficulty_ = "medium";
repeat(max_level_medium_) {

	var spawn_button_ = instance_create_layer(spawn_x_, spawn_y_, "Buttons", obj_button_level);
	spawn_button_.level_ = spawn_level_;
	spawn_button_.difficulty_ = spawn_difficulty_;
	
	spawn_level_ ++;
	spawn_x_ += 150;
	
	if spawn_x_ > (1800 + or_medium_x_) {
		spawn_x_ = 135 + or_medium_x_;
		spawn_y_ += 150
	} 		
}

//hard
var spawn_x_ = 135 + or_hard_x_;
var spawn_y_ = -400;
var spawn_level_ = 1;
var spawn_difficulty_ = "hard";
repeat(max_level_hard_) {

	var spawn_button_ = instance_create_layer(spawn_x_, spawn_y_, "Buttons", obj_button_level);
	spawn_button_.level_ = spawn_level_;
	spawn_button_.difficulty_ = spawn_difficulty_;
	
	spawn_level_ ++;
	spawn_x_ += 150;
	
	if spawn_x_ > (1800 + or_hard_x_) {
		spawn_x_ = 135 + or_hard_x_;
		spawn_y_ += 150
	} 		
}

//expert
var spawn_x_ = 135 + or_expert_x_;
var spawn_y_ = -400;
var spawn_level_ = 1;
var spawn_difficulty_ = "expert";
repeat(max_level_expert_) {

	var spawn_button_ = instance_create_layer(spawn_x_, spawn_y_, "Buttons", obj_button_level);
	spawn_button_.level_ = spawn_level_;
	spawn_button_.difficulty_ = spawn_difficulty_;
	
	spawn_level_ ++;
	spawn_x_ += 150;
	
	if spawn_x_ > (1800 + or_expert_x_) {
		spawn_x_ = 135 + or_expert_x_;
		spawn_y_ += 150
	} 		
}










