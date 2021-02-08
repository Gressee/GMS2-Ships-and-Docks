//draw button
shadow_offset_ = 12;
button_offset_ = 0;

//tap
time_ = 0;
pressed_ = false;


//just go to game if a level has spawned
if not variable_global_exists("level_exists_") {
	global.level_exists_ = false;
}