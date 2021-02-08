///@func scr_button_place_meeting(x1, y1, x2, y2) 
///@arg x1
///@arg y1
///@arg x2
///@arg y3

var x1_ = argument0;
var y1_ = argument1;
var x2_ = argument2;
var y2_ = argument3;

if x1_ < mouse_x and mouse_x < x2_ and y1_ < mouse_y and mouse_y < y2_ {
	return true;	
} else {
	return false;	
}