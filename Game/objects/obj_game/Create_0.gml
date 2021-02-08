//grid vars
box_width_ = 75;
box_height_ = 75;
grid_x_ = 75; //top left is the reference point
grid_y_ = 75;
grid_width_ = box_width_*12;
grid_height_ = box_height_*12;

//vars for ship detections
check_x_ = 0;
check_y_ = 0;
check_col_ = 0;
check_row_ = 0;

//var for comparison (grid numbers)
confirm_value_ = 0;
all_grid_num_correct_ = false;

//check for all ships docked
total_ships_ = 0;
docked_ships_ = 0;
all_ships_docked = false;

//after finished and new level start
menu_spawned_ = false;
levels_solved_saved_ = false;
anchors_added_ = false;

instance_destroy(obj_button_menu);
instance_destroy(obj_button_level_replay);
instance_destroy(obj_button_next_level);
instance_destroy(obj_level_finished_text);
instance_destroy(obj_button_sound);

instance_create_layer(1824, 224, "Buttons", obj_button_menu);
instance_create_layer(1824, 384, "Buttons", obj_button_level_replay);
instance_create_layer(1824, 544, "Buttons", obj_button_sound);



 


