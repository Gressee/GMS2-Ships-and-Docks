//draw water
draw_set_alpha(1);
draw_set_color(make_color_rgb(0, 174, 204));
draw_rectangle(grid_x_, grid_y_, grid_x_ + 12*box_width_, grid_y_ + 12*box_height_, false);

//draw grid
draw_set_color(c_black);
draw_set_alpha(0.5);

i = 0;
j = 0; 
repeat(13){ //horizontal ( -1 at grid x and y for align with docks!!!!! )
	draw_line_width(grid_x_, (i*box_height_)+grid_y_-1, grid_x_ + grid_width_, (i*box_height_)+grid_y_-1, 2);
	i += 1;
} 
repeat(13){ //vertical
	draw_line_width((j*box_height_)+grid_x_-1, grid_y_, (j*box_height_)+grid_x_-1, grid_y_+grid_height_, 2);
	j += 1;
}
draw_set_alpha(1);


//draw grid numbers
draw_set_font(font_grid_num);
draw_set_color(make_color_rgb(40, 23, 11));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var given_num_ = 0;
var current_num_ = 0;
i = 0;
j = 0; 

repeat(12){ //columm
	given_num_ = given_col_num_[i+1];
	current_num_ = current_col_num_[i+1];
	
	if given_num_ = current_num_ {
		draw_set_alpha(0.5);	
	}
	
	draw_text(i*box_width_+grid_x_+(box_width_/2), grid_y_-35, string(given_col_num_[(i+1)]));
	i += 1;
	
	draw_set_alpha(1);
} 

repeat(12){ //row
	given_num_ = given_row_num_[j+1];
	current_num_ = current_row_num_[j+1];
	
	if given_num_ = current_num_ {
		draw_set_alpha(0.5);	
	}
	
	draw_text(grid_x_-35, j*box_height_+grid_y_+(box_height_/2), string(given_row_num_[(j+1)]));
	j += 1;
	
	draw_set_alpha(1);
}

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


//draw current level (top right) (aligned with grid numbers!!!)
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(make_color_rgb(40, 23, 11));
draw_set_font(font_current_level);

var current_level_text_ = scr_load_text_language("current level display", global.language_);
draw_text(1824+125/2, grid_y_ - 35, string(current_level_text_) + " - " + string(global.current_level_))

draw_set_halign(fa_left);
draw_set_valign(fa_top);