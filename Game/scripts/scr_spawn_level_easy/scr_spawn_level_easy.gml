///@func scr_spawn_level_easy(level)
///@desc spawns docks and spawns ship and grid numbers
///@arg level

//only use in obj game

//  EASY


/*  Copy stuff

given_col_num_ = [0,   , , , , , , , , , , , ]; // zero at beginning!!!!!!
given_row_num_ = [0,   , , , , , , , , , , , ];

dock_pos_col_ = [];
dock_pos_row_ = [];

scr_set_ship_data();

*/


//setup vars and arguments
var level_ = argument0;




//create arrays and grid for level
given_col_num_ = array_create(13); //13 is important don't know why
given_row_num_ = array_create(13);

dock_pos_ = ds_grid_create(13, 13);
ds_grid_set_region(dock_pos_, 0, 0, 13, 13, 0);

total_ships_ = 0;


/////////////////////////////////////////////////////////////////////////////////////////////////////
//level data 

//number in () is number in list

//total ships in easy from version 1.0.0 :  66

//level 1 (16)
if level_ = 1 {
	given_col_num_ = [0,   0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0,0 ,0 ,0 ,1 ,1 ,1 ,1 , 0, 0, 0, 0];

	dock_pos_col_ = [7,7,7,7,7,7,7,7,7,7,7,7];
	dock_pos_row_ = [1,2,3,4,5,6,7,8,9,10,11,12];

	scr_set_ship_data(4, false, 1100, 100);	
}


//level 2 (1)
if level_ = 2 {
	given_col_num_ = [0,   0, 0, 0, 0, 0, 5, 2, 0, 4, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 0, 0, 1, 2, 2, 2, 1, 1, 1, 1];
	
	dock_pos_col_ = [6,6,6,6,6,7,8,8,8,8,7,7,7,7,7];
	dock_pos_row_ = [1,2,3,4,5,5,5,6,7,8,8,9,10,11,12];
	
	scr_set_ship_data(5, false, 1100, 100);
	scr_set_ship_data(4, false, 1200, 100);
	scr_set_ship_data(2, false, 1300, 100);
}


//level 3 (50)
if level_ = 3 {
	given_col_num_ = [0,   0, 0, 0, 0, 0, 1, 5, 5, 0, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 1, 1, 1, 3, 0, 0, 1, 1, 1, 1, 0];

	dock_pos_col_ = [9,9,9,9,9,9,8,7,6,6,6,6,6,6,6];
	dock_pos_row_ = [1,2,3,4,5,6,6,6,6,7,8,9,10,11,12];

	scr_set_ship_data(4, false, 1100, 100);
	scr_set_ship_data(4, false, 1200, 100);
	scr_set_ship_data(3, true, 1100, 650);
}


//level 4 (51)
if level_ = 4 {
	given_col_num_ = [0,   0, 0, 0, 1, 1, 1, 1, 4, 4, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 1, 1, 1, 0, 4, 0, 0, 1, 1, 1, 1];

	dock_pos_col_ = [8,8,8,8,8,8,8,8,9,9,9,9,9,7,6,5,4,3,2,1];
	dock_pos_row_ = [1,2,3,4,5,6,7,8,8,9,10,11,12,5,5,5,5,5,5,5];

	scr_set_ship_data(4, false, 1100, 100);
	scr_set_ship_data(4, false, 1200, 100);
	scr_set_ship_data(4, true, 1100, 650);
}


//level 5 (52)
if level_ = 5 {
	given_col_num_ = [0,   0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 0, 3, 0, 4, 2, 0, 0, 0, 0, 0];

	dock_pos_col_ = [1,2,3,4,5,6,6,6,6,7,8,9,9,9,9,10,11,12];
	dock_pos_row_ = [5,5,5,5,5,5,6,7,8,8,8,8,7,6,5,5,5,5];

	scr_set_ship_data(2, true, 1100, 100);
	scr_set_ship_data(3, true, 1100, 200);
	scr_set_ship_data(4, true, 1100, 300);
}


//level 6 (53)
if level_ = 6 {
	given_col_num_ = [0,   0, 0, 0, 0, 6, 0, 5, 0, 0, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 0];

	dock_pos_col_ = [4,4,4,4,4,4,4,4,5,6,6,6,7,8,8,8,8,8,8,8];
	dock_pos_row_ = [1,2,3,4,5,6,7,8,8,8,7,6,6,6,7,8,9,10,11,12];

	scr_set_ship_data(5, false, 1100, 100);
	scr_set_ship_data(6, false, 1200, 100);
}


//level 7 (54)
if level_ = 7 {
	given_col_num_ = [0,   1, 1, 1, 1, 0, 6, 0, 0, 0, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 0, 1, 5, 1, 0, 1, 1, 1, 0, 0];

	dock_pos_col_ = [1,2,3,4,5,5,5,5,6,7,7,7,7,7,7];
	dock_pos_row_ = [4,4,4,4,4,5,6,7,7,7,8,9,10,11,12];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(4, true, 1100, 650);
}


//level 8 (55)
if level_ = 8 {
	given_col_num_ = [0,   0, 0, 0, 3, 0, 5, 1, 1, 1, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 1, 1, 4, 0, 0, 1, 1, 1, 1, 0, 0];

	dock_pos_col_ = [1,2,3,4,5,6,7,8,9,10,11,12,5,5,5,5,5,5,5,5,5,5,5];
	dock_pos_row_ = [5,5,5,5,5,5,5,5,5,5,5,5,1,2,3,4,6,7,8,9,10,11,12];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(4, false, 1200, 100);
	scr_set_ship_data(4, true, 1100, 650);
}


//level 9 (56)
if level_ = 9 {
	given_col_num_ = [0,   0, 0, 0, 0, 0, 4, 0, 3, 1, 1, 1, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 1, 2, 2, 6, 0, 0, 0, 0, 0, 0, 0];

	dock_pos_col_ = [1,2,3,4,5,6,7,8,9,10,11,12,7,7,7,7,7];
	dock_pos_row_ = [6,6,6,6,6,6,6,6,6,6,6,6,1,2,3,4,5];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(4, false, 1200, 100);
	scr_set_ship_data(4, true, 1100, 650);
}


//level 10 (57)
if level_ = 10 {
	given_col_num_ = [0,   1, 1, 1, 0, 5, 1, 1, 1, 1, 1, 1, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 4, 0, 0, 6, 0, 1, 1, 1, 1, 1];

	dock_pos_col_ = [4,4,4,4,4,4,4,4,4,5,6,7,8,9,9,9,9,10,11,12,3,2,1];
	dock_pos_row_ = [12,11,10,9,8,7,6,5,4,4,4,4,4,4,5,6,7,7,7,7,7,7,7];

	scr_set_ship_data(5, false, 1100, 100);
	scr_set_ship_data(3, true, 1100, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(4, true, 1100, 850);
}


//level 11 (58)
if level_ = 11 {
	given_col_num_ = [0,   0, 0, 0, 0, 1, 1, 4, 4, 0, 2, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 1, 1, 1, 1, 4, 0, 1, 1, 1, 0, 0];

	dock_pos_col_ = [1,2,3,4,5,6,7,8,9,9,9,9,9,9,9,8,8,8,8,8];
	dock_pos_row_ = [7,7,7,7,7,7,7,7,7,6,5,4,3,2,1,8,9,10,11,12];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(4, false, 1300, 100);
	scr_set_ship_data(3, true, 1100, 650);
}


//level 12 (59)
if level_ = 12 {
	given_col_num_ = [0,   0, 0, 0, 0, 0, 1, 4, 4, 1, 5, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 0, 4, 0, 2, 2, 3, 1, 1, 1, 1];

	dock_pos_col_ = [9,9,9,9,9,9,9,9,8,7,6,6,6,6];
	dock_pos_row_ = [12,11,10,9,8,7,6,5,5,5,5,6,7,8];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(5, false, 1300, 100);
	scr_set_ship_data(4, true, 1100, 650);
}


//level 13 (25)
if level_ = 13 {
	given_col_num_ = [0,   0, 1, 1, 1, 4, 0, 2, 2, 2, 2, 5, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 5, 0, 0, 4, 0, 1, 5, 2, 1, 1, 1];

	dock_pos_col_ = [12,11,10,9,8,7,6,6,6,6,6,6,6,7,8,9,10,10,10,10,1,2,3,4,5];
	dock_pos_row_ = [3,3,3,3,3,3,3,4,5,6,7,8,9,9,9,9,9,10,11,12,6,6,6,6,6];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(4, false, 1200, 100);
	scr_set_ship_data(4, true, 1100, 650);
	scr_set_ship_data(4, true, 1100, 750);
	scr_set_ship_data(5, true, 1100, 850);
}


//level 14 (60)
if level_ = 14 {
	given_col_num_ = [0,   0, 0, 0, 0, 5, 0, 5, 1, 1, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 0];

	dock_pos_col_ = [6,6,6,6,6,6,6,6,6,6,6,6,7,8,9];
	dock_pos_row_ = [1,2,3,4,5,6,7,8,9,10,11,12,7,7,7];

	scr_set_ship_data(4, false, 1100, 100);
	scr_set_ship_data(5, false, 1200, 100);
	scr_set_ship_data(3, true, 1100, 650);
}


//level 15 (61)
if level_ = 15 {
	given_col_num_ = [0,   0, 0, 0, 0, 3, 0, 4, 0, 7, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 1, 0];

	dock_pos_col_ = [8,8,8,8,8,8,8,8,8,8,8,8,6,5,4,4,4,4,4,5,6,7];
	dock_pos_row_ = [1,2,3,4,5,6,7,8,9,10,11,12,4,4,4,5,6,7,8,8,8,8];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(4, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
}


//level 16 (62)
if level_ = 16 {
	given_col_num_ = [0,   0, 0, 0, 0, 0, 2, 1, 3, 1, 1, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 0, 4, 1, 2, 1, 0, 0, 0, 0, 0];

	dock_pos_col_ = [12,11,10,9,8,7,7,7,6,5,4,3,2,1];
	dock_pos_row_ = [5,5,5,5,5,5,6,7,7,7,7,7,7,7];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(2, false, 1200, 100);
	scr_set_ship_data(4, true, 1100, 650);
}


//level 17 (63)
if level_ = 17 {
	given_col_num_ = [0,   0, 0, 0, 4, 1, 1, 2, 5, 1, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 1, 1, 1, 4, 0, 4, 1, 1, 1, 0];

	dock_pos_col_ = [3,3,3,3,3,3,3,4,5,6,7,8,9,9,9,9,9,9,6,6];
	dock_pos_row_ = [1,2,3,4,5,6,7,7,7,7,7,7,7,8,9,10,11,12,6,5];

	scr_set_ship_data(4, false, 1100, 100);
	scr_set_ship_data(4, false, 1200, 100);
	scr_set_ship_data(3, true, 1100, 650);
	scr_set_ship_data(3, true, 1100, 750);
}


//level 18 (64)
if level_ = 18 {
	given_col_num_ = [0,   1, 1, 1, 1, 2, 1, 1, 0, 1, 1, 1, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 0, 4, 0, 5, 3, 0, 0, 0, 0, 0];

	dock_pos_col_ = [1,2,3,4,5,6,7,8,9,10,11,12,4,4,4,5,6,7,8,8,8];
	dock_pos_row_ = [5,5,5,5,5,5,5,5,5,5,5,5,6,7,8,8,8,8,8,7,6];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(2, true, 1100, 650);
	scr_set_ship_data(4, true, 1100, 750);
	scr_set_ship_data(4, true, 1100, 850);
}


//level 19 (65)
if level_ = 19 {
	given_col_num_ = [0,   0, 0, 5, 0, 4, 1, 1, 1, 0, 5, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 1, 1, 1, 1, 2, 2, 2, 5, 1, 0, 0];

	dock_pos_col_ = [4,4,4,4,4,4,4,4,4,4,5,6,7,8,9,9,9,9,9,9,9,9,9,9];
	dock_pos_row_ = [1,2,3,4,5,6,7,8,9,10,10,10,10,10,10,9,8,7,6,5,4,3,2,1];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(5, false, 1200, 100);
	scr_set_ship_data(5, false, 1300, 100);
	scr_set_ship_data(4, true, 1100, 650);
}








	



























//level test
if level_ = "test" {
	given_col_num_ = [0,   0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0];

	dock_pos_col_ = [3,3,3];
	dock_pos_row_ = [1,2,3];

	scr_set_ship_data(3, false, 1100, 100);
}




/*  Copy stuff

//level ()
if level_ = {
	given_col_num_ = [0,   , , , , , , , , , , , ]; // zero at beginning!!!!!!
	given_row_num_ = [0,   , , , , , , , , , , , ];

	dock_pos_col_ = [];
	dock_pos_row_ = [];

	scr_set_ship_data();
}

*/

////////////////////////////////////////////////////////////////////////////////////////////////////
// end of level data

//place docks
var spawn_x_ = 0;
var spawn_y_ = 0;
var total_docks_ = array_length_1d(dock_pos_col_);

i = 0;
repeat(total_docks_) {
	spawn_x_ = dock_pos_col_[i]*box_width_ + grid_x_ - box_width_/2;
	spawn_y_ = dock_pos_row_[i]*box_height_ + grid_y_ - box_height_/2;
	instance_create_layer(spawn_x_, spawn_y_, "Docks", obj_dock_box);	
	
	i += 1;
}




/*
//place docks
var grid_value_ = 0;
m = 0;
n = 0;
repeat(13) {
	n = 0;
	repeat(13) {
		grid_value_ = ds_grid_get(dock_pos_, m, n);
		if grid_value_ = 1 {
			dock_spawn_x_ = grid_x_ + m*box_width_ - box_width_/2;
			dock_spawn_y_ = grid_y_ + n*box_height_ - box_height_/2;
			instance_create_layer(dock_spawn_x_, dock_spawn_y_, "Docks", obj_dock_box);
		}
		n += 1;
	}
	m += 1;
}

ds_grid_destroy(dock_pos_);
