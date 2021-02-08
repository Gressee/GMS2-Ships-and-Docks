//time
time_++;


//button animation when room changed
if new_room_ = true {
	//reset
	new_room_ = false;
	time_ = 0;
	
	//start position 
	if room == rm_main_menu {
		//headline
		obj_headline.x = 960;
		obj_headline.y = -1000;
		
		//button play
		obj_button_play.x = 960;
		obj_button_play.y = -200;
		
		//back button
		obj_button_back.x = 96;
		obj_button_back.y = 1200;
		
		//tutorial button
		obj_button_tutorial.x = 288;
		obj_button_tutorial.y = 1200;

		//sound button
		obj_button_sound.x = 480;
		obj_button_sound.y = 1200;
		
		//language button
		obj_button_language.x = 672;
		obj_button_language.y = 1200;
		
		//suggest tutorial: in obj
	}
	
	
	if room == rm_level_menu {
		//back button
		obj_button_back.x = 96;
		obj_button_back.y = 1200;	
		
		//back to game button
		obj_button_back_to_game.x = 1824;
		obj_button_back_to_game.y = 1200
		
		//sliding bar
		obj_sliding_bar.x = 300;
		obj_sliding_bar.y = -500;
	}
}


//////////////////////////////////////////////////////////////////////////////////////////////

//move objects
if room == rm_main_menu {
	//headline
	if time_ > 5 {
		obj_headline.y = lerp(obj_headline.y, 192, 0.3);
	}
	
	//play button
	if time_ > 0 {
		obj_button_play.y = lerp(obj_button_play.y, 544, 0.3);
	}

	//back button
	if time_ > 1 {
		obj_button_back.y = lerp(obj_button_back.y, 992, 0.3);
	}
	
	//tutorial button
	if time_ > 5 {
		obj_button_tutorial.y = lerp(obj_button_back.y, 992, 0.3);
	}

	//sound button
	if time_ > 10 {
		obj_button_sound.y = lerp(obj_button_sound.y, 992, 0.3);
	}
	
	//language button
	if time_ > 15 {
		obj_button_language.y = lerp(obj_button_language.y, 992, 0.3);
	}
}


if room == rm_level_menu {
	//back button
	if time_ > 25 {
		obj_button_back.y = lerp(obj_button_back.y, 992, 0.3);
	}
	
	//back to game button
	if time_ > 25 {
		obj_button_back_to_game.y = lerp(obj_button_back_to_game.y, 992, 0.3);
	}
	
	//sliding bar
	if time_ > 4 {
		obj_sliding_bar.y = lerp(obj_sliding_bar.y, 175, 0.3);
	}
	
	//for rest of buttons: is in buttons and obj and spawner
}






















