//draw button
shadow_offset_ = 12;
button_offset_ = 0;

//tap
time_ = 0;
pressed_ = false;


//sound
ini_open("saved_data.ini")
sound_on_ = ini_read_real("sound", "sound_on_", true);
ini_close();

sound_option_change_ = true;
subimage_ = 0;
