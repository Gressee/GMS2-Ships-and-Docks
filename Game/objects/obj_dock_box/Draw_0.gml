/*
if dock_top_ = and dock_bottom_ = and dock_left_ = and dock_right_=  {
	draw_sprite_ext(spr_dock_ , 0, x, y, 1, 1, , image_blend, image_alpha);	
}
*/
//draw_self();	

//dock 0
if dock_top_ = false and dock_bottom_ = false and dock_left_ = false and dock_right_= false {
	draw_sprite_ext(spr_dock_0 , 0, x, y, 1, 1, 0, image_blend, image_alpha);	
}

// dock 1
if dock_top_ = true and dock_bottom_ = false and dock_left_ = false and dock_right_= false {
	draw_sprite_ext(spr_dock_1 , 0, x, y, 1, 1, 0, image_blend, image_alpha);	
}
if dock_top_ = false and dock_bottom_ = false and dock_left_ = true and dock_right_= false {
	draw_sprite_ext(spr_dock_1 , 0, x, y, 1, 1, 90, image_blend, image_alpha);	
}
if dock_top_ = false and dock_bottom_ = true and dock_left_ = false and dock_right_= false {
	draw_sprite_ext(spr_dock_1 , 0, x, y, 1, 1, 180, image_blend, image_alpha);	
}
if dock_top_ = false and dock_bottom_ = false and dock_left_ = false and dock_right_= true {
	draw_sprite_ext(spr_dock_1 , 0, x, y, 1, 1, 270, image_blend, image_alpha);	
}

// dock 2
if dock_top_ = true and dock_bottom_ = true and dock_left_ = false and dock_right_= false {
	draw_sprite_ext(spr_dock_2s , 0, x, y, 1, 1, 90, image_blend, image_alpha);	
}
if dock_top_ = false and dock_bottom_ = false and dock_left_ = true and dock_right_= true {
	draw_sprite_ext(spr_dock_2s , 0, x, y, 1, 1, 0, image_blend, image_alpha);	
}

if dock_top_ = true and dock_bottom_ = false and dock_left_ = false and dock_right_= true {
	draw_sprite_ext(spr_dock_2c , 0, x, y, 1, 1, 0, image_blend, image_alpha);	
}
if dock_top_ = true and dock_bottom_ = false and dock_left_ = true and dock_right_= false {
	draw_sprite_ext(spr_dock_2c , 0, x, y, 1, 1, 90, image_blend, image_alpha);	
}
if dock_top_ = false and dock_bottom_ = true and dock_left_ = true and dock_right_= false {
	draw_sprite_ext(spr_dock_2c , 0, x, y, 1, 1, 180, image_blend, image_alpha);	
}
if dock_top_ = false and dock_bottom_ = true and dock_left_ = false and dock_right_= true {
	draw_sprite_ext(spr_dock_2c , 0, x, y, 1, 1, 270, image_blend, image_alpha);	
}

//dock 3
if dock_top_ = true and dock_bottom_ = false and dock_left_ = true and dock_right_= true {
	draw_sprite_ext(spr_dock_3 , 0, x, y, 1, 1, 0, image_blend, image_alpha);	
} 
if dock_top_ = true and dock_bottom_ = true and dock_left_ = true and dock_right_= false {
	draw_sprite_ext(spr_dock_3 , 0, x, y, 1, 1, 90, image_blend, image_alpha);	
}
if dock_top_ = false and dock_bottom_ = true and dock_left_ = true and dock_right_= true {
	draw_sprite_ext(spr_dock_3 , 0, x, y, 1, 1, 180, image_blend, image_alpha);	
}
if dock_top_ = true and dock_bottom_ = true and dock_left_ = false and dock_right_= true {
	draw_sprite_ext(spr_dock_3 , 0, x, y, 1, 1, 270, image_blend, image_alpha);	
}

//dock 4
if dock_top_ = true and dock_bottom_ = true and dock_left_ = true and dock_right_= true {
	draw_sprite_ext(spr_dock_4 , 0, x, y, 1, 1, 0, image_blend, image_alpha);	
}


