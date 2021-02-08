//button press
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

	if sound_on_ = true {
		sound_on_ = false;
	} else {
		sound_on_ = true;	
	}

	sound_option_change_ = true; //gets reset in obj_sound
	
	ini_open("saved_data.ini");
	ini_write_real("sound", "sound_on_", sound_on_);
	ini_close();
}


//sound managemant
if sound_on_ = true {
	subimage_ = 0;
} else {
	subimage_ = 1;
}
