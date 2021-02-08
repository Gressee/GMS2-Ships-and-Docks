///@func scr_spawn_level(level)
///@desc spawns docks and spawns ship and grid numbers
///@arg level

//only use in obj game

//  EXPERT


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

//total ships in version 1.0.0 : 169



//level 1 (4)
if level_ = 1 {
	given_col_num_ = [0,   0, 6, 3, 3, 0, 4, 4, 0, 5, 4, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 0, 4, 4, 4, 2, 3, 4, 3, 3, 2];	

	dock_pos_col_ = [8,8,8,8,8,8,8,8,8,8,8,8,9,10,11,11,11,11,11,11,122,11,10,9,8,7,6,5,4,4,4,4,3,2,1,1,1,1,1,1,1,1,1,1,2,3,4,5,5,5,5];
	dock_pos_row_ = [1,2,3,4,5,6,7,8,9,10,11,12,3,3,3,4,5,6,7,8,9,9,9,9,9,6,6,6,6,5,4,3,3,3,3,4,5,6,7,8,9,10,11,12,12,12,12,12,11,10,9];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(4, false, 1600, 100);
	scr_set_ship_data(5, false, 1700, 100);
	scr_set_ship_data(2, true, 1100, 650);
	scr_set_ship_data(2, true, 1100, 750);

}


//level 2 (12)
if level_ = 2 {
	given_col_num_ = [0,   1, 4, 1, 2, 2, 1, 1, 1, 9, 4, 1, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 0, 5, 1, 3, 2, 2, 3, 2, 5, 0, 4];

	dock_pos_col_ = [3,3,3,3,3,2,1,1,1,1,1,2,3,4,4,4,4,4,5,6,7,8,8,8,9,10,10,10,10,10,10,10,11,11,11,11,11,10,9,8,7,7,6,6,6,6,7,8,8,8];
	dock_pos_row_ = [1,2,3,4,5,5,5,6,7,8,9,9,9,9,10,11,12,4,4,4,4,4,3,2,2,2,2,3,4,5,6,7,7,8,9,10,11,11,11,11,11,12,5,6,7,8,8,8,9,10];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(5, false, 1400, 100);
	scr_set_ship_data(2, true, 1100, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(4, true, 1100, 850);
	scr_set_ship_data(4, true, 1100, 950);
}


//level 3 (27)
if level_ = 3 {
	given_col_num_ = [0,   4, 1, 4, 0, 7, 1, 2, 2, 1, 2, 1, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   4, 1, 2, 2, 1, 4, 1, 1, 1, 7, 1, 1];

	dock_pos_col_ = [1,2,2,2,2,3,4,5,6,7,8,9,10,11,12,7,7,7,8,9,10,9,9,9,9,10,11,12,4,4,4,4,4,4,4,1,2,3];
	dock_pos_row_ = [2,2,3,4,5,5,5,5,5,5,5,5,5,5,5,4,3,2,2,2,2,6,7,8,9,9,9,9,6,7,8,9,10,11,12,9,9,9];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(6, false, 1300, 100);
	scr_set_ship_data(3, true, 1100, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(4, true, 1100, 850);
	scr_set_ship_data(4, true, 1100, 950);
}


//level 4 (41)
if level_ = 4 {
	given_col_num_ = [0,   2, 2, 2, 2, 1, 5, 0, 5, 1, 4, 1, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 3, 0, 6, 4, 4, 2, 1, 2, 1, 1, 1];

	dock_pos_col_ = [1,2,3,4,5,6,7,8,9,7,7,9,10,11,12,9,9,9,9,8,7,6,5,5,5,5,4,3,2,1,7,7,7,7]
	dock_pos_row_ = [3,3,3,3,3,3,3,3,3,2,1,4,4,4,4,5,6,7,8,8,8,8,8,7,6,5,5,5,5,5,9,10,11,12]

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(2, true, 1100, 650);
	scr_set_ship_data(2, true, 1300, 650);
	scr_set_ship_data(2, true, 1500, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(5, true, 1100, 850);
	
}


//level 5 (43)
if level_ = 5 {
	given_col_num_ = [0,   1, 1, 1, 2, 5, 2, 3, 4, 3, 3, 3, 2]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 5, 0, 3, 5, 1, 1, 1, 0, 10, 0, 4];

	dock_pos_col_ = [12,11,10,9,8,7,6,5,4,3,3,3,4,5,6,6,7,8,9,10,11,12,6,6,6,5,4,3,2,1,5,5,6,7,8,9,10,11,12]
	dock_pos_row_ = [3,3,3,3,3,3,3,3,3,3,4,5,5,5,5,6,6,6,6,6,6,6,7,8,9,9,9,9,9,9,10,11,11,11,11,11,11,11,11]

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(3, true, 1100, 450);
	scr_set_ship_data(4, true, 1100, 550);
	scr_set_ship_data(4, true, 1100, 650);
	scr_set_ship_data(5, true, 1100, 750);
	scr_set_ship_data(5, true, 1100, 850);
	scr_set_ship_data(6, true, 1100, 950);
}


//level 6 (44)
if level_ = 6 {
	given_col_num_ = [0,   4, 2, 5, 0, 0, 3, 5, 4, 1, 1, 0, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 2, 2, 3, 3, 2, 6, 2, 1, 1, 1, 1];

	dock_pos_col_ = [3,3,3,2,2,2,2,2,2,2,3,4,5,5,5,5,6,7,8,8,8,8,8,9,10,11,11,11,11,11,11,11,10,9,8,7,7,7,7,7]
	dock_pos_row_ = [1,2,3,3,4,5,6,7,8,9,9,9,9,8,7,6,6,6,6,5,4,3,2,2,2,2,3,4,5,6,7,8,8,8,8,8,9,10,11,12]

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(5, false, 1600, 100);
	scr_set_ship_data(4, true, 1100, 650);
}



//level 7 (46)
if level_ = 7 {
	given_col_num_ = [0,   0, 0, 5, 1, 1, 5, 4, 2, 5, 0, 3, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 2, 2, 2, 2, 6, 2, 3, 2, 0, 4, 0];

	dock_pos_col_ = [5,5,5,4,3,2,2,2,2,2,2,4,4,5,6,7,8,8,8,8,8,9,10,10,10,10,10,10,10,10,10,10,9,8,7,6,6,6]
	dock_pos_row_ = [1,2,3,3,3,3,4,5,6,7,8,4,5,5,5,5,5,4,3,2,1,1,1,2,3,4,5,6,7,8,9,10,10,10,10,10,9,8]

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(5, false, 1500, 100);
	scr_set_ship_data(4, true, 1100, 650);
	scr_set_ship_data(5, true, 1100, 750);
}


//level 8 (66)
if level_ = 8 {
	given_col_num_ = [0,   1, 1, 5, 0, 7, 1, 1, 4, 1, 1, 0, 3]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 1, 1, 5, 3, 6, 2, 2, 1, 1, 1, 1];

	dock_pos_col_ = [1,1,1,2,3,4,4,4,4,4,4,4,4,4,5,6,7,6,6,6,7,7,7,7,5,6,8,8,9,10,11,10,10,10,11,11,11,12];
	dock_pos_row_ = [3,4,5,5,5,1,2,3,4,5,6,7,8,9,9,9,9,10,11,12,8,7,6,5,5,5,5,4,4,4,4,3,2,1,5,6,7,7];

	scr_set_ship_data(3, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(2, true, 1100, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(3, true, 1100, 850);
}


//level 9 (67)
if level_ = 9 {
	given_col_num_ = [0,   0, 0, 0, 4, 2, 6, 4, 3, 2, 2, 3, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   4, 0, 2, 0, 7, 1, 1, 4, 2, 2, 0, 4];

	dock_pos_col_ = [1,2,3,3,4,4,4,4,5,6,7,7,7,7,7,7,6,8,9,10,11,12,8,9,10,10,11,11,3,3,3,4,5,5,5,6,7,8,8];
	dock_pos_row_ = [7,7,7,8,8,9,10,11,11,11,11,10,9,8,7,6,7,6,6,6,6,6,9,9,9,10,7,8,6,5,4,4,4,3,2,2,2,2,3];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(2, true, 1100, 550);
	scr_set_ship_data(3, true, 1100, 650);
	scr_set_ship_data(4, true, 1100, 750);
	scr_set_ship_data(4, true, 1100, 850);
	scr_set_ship_data(6, true, 1100, 950);
}


//level 10 (68)
if level_ = 10 {
	given_col_num_ = [0,   3, 0, 6, 2, 3, 2, 9, 1, 5, 5, 5, 6]; // zero at beginning!!!!!!
	given_row_num_ = [0,   1, 2, 8, 3, 6, 1, 9, 3, 7, 1, 5, 1];

	dock_pos_col_ = [11,11,11,11,10,9,8,8,8,8,8,8,8,8,8,9,10,11,12,12,12,12,12,11,10,9,7,6,5,4,3,2,2,2,2,1,3,4,5,6,6,6,6,6,4,4,4,4,5,6,7,7];
	dock_pos_row_ = [1,2,3,4,4,4,4,5,6,7,8,9,10,11,12,6,6,6,6,7,8,9,10,10,10,10,6,6,6,6,6,6,7,8,9,9,8,8,8,8,9,10,11,12,5,4,3,2,2,2,2,1];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(5, false, 1600, 100);
	scr_set_ship_data(2, true, 1100, 650);
	scr_set_ship_data(2, true, 1250, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(3, true, 1325, 750);
	scr_set_ship_data(3, true, 1550, 750);
	scr_set_ship_data(4, true, 1100, 850);
	scr_set_ship_data(4, true, 1400, 850);
	scr_set_ship_data(5, true, 1100, 950);
	
}


//level 11 (69)
if level_ = 11 {
	given_col_num_ = [0,   6, 4, 1, 10, 0, 5, 1, 3, 7, 2, 5, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   4, 2, 4, 4, 4, 5, 3, 4, 2, 6, 1, 6];

	dock_pos_col_ = [1,2,3,3,3,2,1,2,2,2,2,3,3,3,3,3,2,1,4,5,5,5,5,5,5,5,5,6,7,8,10,11,12,8,8,9,10,10,10,10,9,8,7,7,7,7,5,6,8,9,10,11,12,10,10,10,11,12,9,8,8];
	dock_pos_row_ = [2,2,2,3,4,4,4,5,6,7,8,8,9,10,11,12,11,11,8,8,7,6,5,4,3,2,1,7,7,7,7,7,7,6,5,5,5,6,8,9,9,9,9,10,11,12,11,11,11,11,11,11,11,4,3,2,3,3,2,2,1];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(2, false, 1100, 250);
	scr_set_ship_data(2, false, 1200, 100);
	scr_set_ship_data(2, false, 1200, 250);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(4, false, 1600, 100);
	scr_set_ship_data(5, false, 1700, 100);
	scr_set_ship_data(2, true, 1100, 550);
	scr_set_ship_data(3, true, 1100, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(4, true, 1100, 850);
	scr_set_ship_data(5, true, 1100, 950);
}


//level 12 (70)
if level_ = 12 {
	given_col_num_ = [0,   1, 4, 3, 2, 5, 4, 7, 5, 8, 4, 5, 5]; // zero at beginning!!!!!!
	given_row_num_ = [0,   2, 9, 3, 4, 3, 6, 2, 7, 3, 7, 2, 5];

	dock_pos_col_ = [1,1,1,1,1,2,3,4,5,5,6,7,8,9,10,11,11,11,11,11,10,9,8,7,6,5,4,2,3,3,3,4,5,5,5,4,4,3,2,1,1,1,2,3,4,4,4,6,6,6,6,7,8,8,8,9,10,10,10,10,10,5,6,7,8];
	dock_pos_row_ = [12,11,10,9,8,12,12,12,12,11,11,11,11,11,11,11,10,9,8,7,7,7,7,7,7,7,7,8,8,9,10,10,10,9,8,6,5,5,5,5,4,3,3,3,3,2,1,6,5,4,3,3,3,4,5,5,5,4,3,2,1,1,1,1,1];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(2, false, 1100, 250);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1200, 325);
	scr_set_ship_data(4, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(5, false, 1500, 100);
	scr_set_ship_data(5, false, 1600, 100);
	scr_set_ship_data(3, true, 1100, 550);
	scr_set_ship_data(3, true, 1325, 550);
	scr_set_ship_data(4, true, 1100, 650);
	scr_set_ship_data(5, true, 1100, 750);
	scr_set_ship_data(5, true, 1100, 850);
	scr_set_ship_data(5, true, 1100, 950);
}


//level 13 (71)
if level_ = 13 {
	given_col_num_ = [0,   0, 2, 7, 3, 6, 3, 7, 3, 7, 1, 8, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   0, 7, 1, 4, 5, 5, 4, 6, 1, 8, 2, 4];

	dock_pos_col_ = [12,12,12,12,12,12,12,12,12,12,12,12,11,10,9,8,7,6,5,4,3,2,1,1,1,2,3,4,2,2,2,2,1,4,4,4,4,5,6,6,6,6,6,7,8,8,8,8,8,8,8,7,6,5,4,3,2,1,1,1,2,3,4,4,6,6,7,8,9,10,10,10,10,10,10,10,10,10,10];
	dock_pos_row_ = [12,11,10,9,8,7,6,5,4,3,2,1,1,1,1,1,1,1,1,1,1,1,1,2,3,3,3,3,4,5,6,7,7,4,5,6,7,7,7,6,5,4,3,3,3,4,5,6,7,8,9,9,9,9,9,9,9,9,10,11,11,11,11,12,12,11,11,11,11,11,10,9,8,7,6,5,4,3,2];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(2, false, 1100, 250);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1200, 325);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(5, false, 1600, 100);
	scr_set_ship_data(3, true, 1100, 650);
	scr_set_ship_data(3, true, 1325, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(3, true, 1325, 750);
	scr_set_ship_data(4, true, 1100, 850);
	scr_set_ship_data(5, true, 1100, 950);
}


//level 14 (72)
if level_ = 14 {
	given_col_num_ = [0,   5, 1, 8, 0, 9, 3, 3, 1, 8, 2, 4, 0]; // zero at beginning!!!!!!
	given_row_num_ = [0,   2, 5, 2, 4, 4, 4, 4, 5, 3, 5, 4, 2];

	dock_pos_col_ = [1,2,3,4,11,10,9,8,8,7,6,5,4,4,4,3,2,2,2,2,2,2,2,1,3,4,4,4,4,4,4,11,11,12,12,12,12,11,10,10,10,10,11,12,12,12,11,10,10,9,8,7,6,6,6,7,8,8,8,7,6,6,6,6,7,8,8,8];
	dock_pos_row_ = [12,12,12,12,12,12,12,12,11,11,11,11,11,10,9,9,9,8,7,6,5,4,3,3,6,6,5,4,3,2,1,11,10,10,9,8,7,7,7,6,5,4,4,4,3,2,2,2,1,1,1,1,1,2,3,3,3,4,5,5,5,6,7,8,8,8,9,10];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(2, false, 1100, 250);
	scr_set_ship_data(2, false, 1200, 100);
	scr_set_ship_data(2, false, 1200, 250);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(3, false, 1300, 325);	
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(4, false, 1600, 100);
	scr_set_ship_data(5, false, 1700, 100);
	scr_set_ship_data(2, true, 1100, 650);
	scr_set_ship_data(2, true, 1250, 650);
	scr_set_ship_data(3, true, 1100, 750);
	scr_set_ship_data(3, true, 1100, 850);
	scr_set_ship_data(3, true, 1100, 950);


}


//level 15 (73)
if level_ = 15 {
	given_col_num_ = [0,   5, 3, 3, 5, 3, 8, 0, 10, 2, 7, 2, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   6, 2, 3, 5, 6, 3, 4, 3, 3, 6, 0, 8];

	dock_pos_col_ = [1,2,3,3,3,3,2,1,1,1,2,3,4,5,5,5,5,5,5,5,4,4,3,2,2,2,3,4,5,6,7,6,7,7,7,7,7,7,7,7,7,7,7,8,9,10,11,12,12,12,11,10,9,9,9,9,9,9,9,9,9,10,11,12,12,12,11,11,11,11,11,12,12];
	dock_pos_row_ = [11,11,11,10,9,8,8,8,7,6,6,6,6,6,7,8,9,10,11,12,5,4,4,4,3,2,2,2,2,2,2,3,3,1,4,5,6,7,8,9,10,11,12,11,11,11,11,11,10,9,9,9,9,8,7,6,5,4,3,2,1,1,1,1,2,3,3,4,5,6,7,7,8];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(2, false, 1100, 250);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(4, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(5, false, 1600, 100);
	scr_set_ship_data(5, false, 1700, 100);
	scr_set_ship_data(3, true, 1100, 550);
	scr_set_ship_data(3, true, 1100, 650);
	scr_set_ship_data(4, true, 1100, 750);
	scr_set_ship_data(5, true, 1100, 850);
	scr_set_ship_data(5, true, 1100, 950);
}


//level 16 (74)
if level_ = 16 {
	given_col_num_ = [0,   3, 2, 7, 2, 6, 2, 6, 4, 5, 2, 4, 1]; // zero at beginning!!!!!!
	given_row_num_ = [0,   4, 3, 4, 4, 2, 4, 4, 2, 7, 2, 7, 1];

	dock_pos_col_ = [1,2,2,2,2,2,1,1,1,2,3,4,4,4,4,3,2,1,1,1,2,3,4,5,7,6,7,7,8,9,10,10,10,11,12,12,12,12,12,11,10,9,8,7,6,6,6,6,5,4,4,4,4,5,6,7,8,8,8,8,8,9,10,10,10,10,10,10];
	dock_pos_row_ = [1,1,2,3,4,5,5,6,7,7,7,7,8,9,10,10,10,10,11,12,12,12,12,12,12,12,11,10,10,10,10,11,12,12,12,11,10,9,8,8,8,8,8,8,8,7,6,5,5,5,4,3,2,2,2,2,2,3,4,5,6,6,6,5,4,3,2,1];

	scr_set_ship_data(2, false, 1100, 100);
	scr_set_ship_data(2, false, 1100, 250);
	scr_set_ship_data(3, false, 1200, 100);
	scr_set_ship_data(3, false, 1200, 325);
	scr_set_ship_data(3, false, 1300, 100);
	scr_set_ship_data(4, false, 1400, 100);
	scr_set_ship_data(4, false, 1500, 100);
	scr_set_ship_data(4, false, 1600, 100);
	scr_set_ship_data(3, true, 1100, 650);
	scr_set_ship_data(3, true, 1325, 650);
	scr_set_ship_data(4, true, 1100, 750);
	scr_set_ship_data(4, true, 1400, 750);
	scr_set_ship_data(5, true, 1100, 850);
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

//level  ()
if level_ =  {
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
