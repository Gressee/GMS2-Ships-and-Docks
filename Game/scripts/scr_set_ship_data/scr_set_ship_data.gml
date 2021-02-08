///@func scr_set_ship_dat(length, horizontal, x, y) 
///@arg lenght
///@arg horizontal
///@arg x
///@arg y

var ship_lenght_ = argument0;
var hor_ = argument1;
var spawn_x_ = argument2;
var spawn_y_ = argument3;


//scr_set_ship_drag_box(ship_lenght_, hor_);
//scr_spawn_ship(spawn_x_, spawn_y_, lenght_, hor_);

//set correct drag box
if hor_ = true {
	if ship_lenght_ = 2 {
		object_set_sprite(obj_ship, spr_ship_drag_box_2_hor);	
	}
	if ship_lenght_ = 3 {
		object_set_sprite(obj_ship, spr_ship_drag_box_3_hor);	
	}
	if ship_lenght_ = 4 {
		object_set_sprite(obj_ship, spr_ship_drag_box_4_hor);	
	}
	if ship_lenght_ = 5 {
		object_set_sprite(obj_ship, spr_ship_drag_box_5_hor);	
	}
	if ship_lenght_ = 6 {
		object_set_sprite(obj_ship, spr_ship_drag_box_6_hor);	
	}
} else {
	if ship_lenght_ = 2 {
		object_set_sprite(obj_ship, spr_ship_drag_box_2_ver);	
	}
	if ship_lenght_ = 3 {
		object_set_sprite(obj_ship, spr_ship_drag_box_3_ver);	
	}
	if ship_lenght_ = 4 {
		object_set_sprite(obj_ship, spr_ship_drag_box_4_ver);	
	}
	if ship_lenght_ = 5 {
		object_set_sprite(obj_ship, spr_ship_drag_box_5_ver);	
	}
	if ship_lenght_ = 6 {
		object_set_sprite(obj_ship, spr_ship_drag_box_6_ver);	
	}
}


//spawn ship
if hor_ = true {
	ver_ = false;	
} else {
	ver_ = true;	
}

var spawn_ship_ = instance_create_layer(spawn_x_, spawn_y_, "Ships", obj_ship);
spawn_ship_.ship_lenght_ = ship_lenght_;
spawn_ship_.ver_ = ver_;
spawn_ship_.hor_ = hor_;
spawn_ship_.start_x_ = spawn_x_;
spawn_ship_.start_y_ = spawn_y_;


total_ships_ += 1;