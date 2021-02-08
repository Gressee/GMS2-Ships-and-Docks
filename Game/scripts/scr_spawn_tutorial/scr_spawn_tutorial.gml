///@func scr_spawn_tutorrial()
///@desc spawns docks and spawns ship and grid numbers



//create arrays and grid for level
given_col_num_ = array_create(13); //13 is important don't know why
given_row_num_ = array_create(13);

dock_pos_ = ds_grid_create(13, 13);
ds_grid_set_region(dock_pos_, 0, 0, 13, 13, 0);

total_ships_ = 0;






given_col_num_ = [0,   0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0]; // zero at beginning!!!!!!
given_row_num_ = [0,   0, 0,0 ,0 ,1 ,1 ,1 ,1 , 0, 0, 0, 0];

dock_pos_col_ = [7,7,7,7,7,7,7,7,7,7,7,7];
dock_pos_row_ = [1,2,3,4,5,6,7,8,9,10,11,12];

		
		
#region //like scr set ship data but with tutorual objs
		var ship_lenght_ = 4;
		var hor_ = false;
		var spawn_x_ = 1100;
		var spawn_y_ = 100;

		//scr_set_ship_drag_box(ship_lenght_, hor_);
		//scr_spawn_ship(spawn_x_, spawn_y_, lenght_, hor_);

		//set correct drag box
		if hor_ = true {
			if ship_lenght_ = 2 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_2_hor);	
			}
			if ship_lenght_ = 3 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_3_hor);	
			}
			if ship_lenght_ = 4 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_4_hor);	
			}
			if ship_lenght_ = 5 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_5_hor);	
			}
			if ship_lenght_ = 6 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_6_hor);	
			}
		} else {
			if ship_lenght_ = 2 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_2_ver);	
			}
			if ship_lenght_ = 3 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_3_ver);	
			}
			if ship_lenght_ = 4 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_4_ver);	
			}
			if ship_lenght_ = 5 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_5_ver);	
			}
			if ship_lenght_ = 6 {
				object_set_sprite(obj_tutorial_ship, spr_ship_drag_box_6_ver);	
			}
		}


		//spawn ship
		if hor_ = true {
			ver_ = false;	
		} else {
			ver_ = true;	
		}

		var spawn_ship_ = instance_create_layer(spawn_x_, spawn_y_, "Ships", obj_tutorial_ship);
		spawn_ship_.ship_lenght_ = ship_lenght_;
		spawn_ship_.ver_ = true;
		spawn_ship_.hor_ = false;
		spawn_ship_.start_x_ = spawn_x_;
		spawn_ship_.start_y_ = spawn_y_;

		total_ships_ += 1;
#endregion




//place docks
var spawn_x_ = 0;
var spawn_y_ = 0;
var total_docks_ = array_length_1d(dock_pos_col_);

i = 0;
repeat(total_docks_) {
	spawn_x_ = dock_pos_col_[i]*box_width_ + grid_x_ - box_width_/2;
	spawn_y_ = dock_pos_row_[i]*box_height_ + grid_y_ - box_height_/2;
	instance_create_layer(spawn_x_, spawn_y_, "Docks", obj_tutorial_dock_box);	
	
	i += 1;
}