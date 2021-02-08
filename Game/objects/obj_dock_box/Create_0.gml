//correct sprite and oriantation
dock_top_ = false;
dock_bottom_ = false;
dock_left_ = false;
dock_right_ = false;

//check top
if position_meeting(x, y - obj_game.box_height_, obj_dock_box) {
	dock_top_ = true;	
} else {
	dock_top_ = false;	
}

//check bottom
if position_meeting(x, y + obj_game.box_height_, obj_dock_box) {
	dock_bottom_ = true;	
} else {
	dock_bottom_ = false;	
}

//check left
if position_meeting(x - obj_game.box_width_, y, obj_dock_box) {
	dock_left_ = true;	
} else {
	dock_left_ = false;	
}

//check right
if position_meeting(x + obj_game.box_width_ , y, obj_dock_box) {
	dock_right_ = true;
} else {
	dock_right_ = false;		
}