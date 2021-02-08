if pressed_ = true {
	time_++;	
}

if time_ > 0 and time_ < 8 {
	button_offset_ = lerp(button_offset_, shadow_offset_, 0.2);
} else {
	button_offset_ = lerp(button_offset_, 0, 0.2);	
}

if time_ >= 15 {
	time_ = 0;
	pressed_ = false
	
	room_restart();
	instance_destroy(obj_ship);
	instance_destroy(obj_dock_box);
	
	//because of tutorial it might be not there
	if instance_exists(obj_game) {
		instance_destroy(obj_game);
	}
	
	instance_create_layer(x, y, "Invisible", obj_game);
	
	global.spawn_level_ = true;
	
	//ads
	obj_ads.game_break_ = true;

}