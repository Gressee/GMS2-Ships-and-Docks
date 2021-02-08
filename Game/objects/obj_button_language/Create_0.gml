//draw button
shadow_offset_ = 12;
button_offset_ = 0;
menu_alpha_ = 1;

//tap
time_ = 0;
pressed_ = false;

//buttons
menu_open_ = false;

menu_x_ = x;
menu_y_ = y;

button_left_x_ = 0;
button_right_x_ = 0;
button_left_offset_ = 0;
button_right_offset_ = 0;
button_left_pressed_ = false;
button_right_pressed_ = false;
button_left_time_ = 0;
button_right_time_ = 0;


//languages
menu_languages_[0] = "English";
menu_languages_[1] = "Deutsch";
menu_languages_[2] = "Français";


//read language from ini or devive

//from device
ini_open("saved_data.ini")
language_first_set_ = ini_read_real("language", "language_first_set_", false);
ini_close();

if language_first_set_ = false {

	//save data
	language_first_set_ = true;
	ini_open("saved_data.ini");
	ini_write_real("language", "language_first_set_", language_first_set_);
	
	
	//get device os
	selected_index_ = 0; // if nothing set english
	switch (os_get_language()) {
	
		case "en":
		selected_index_ = 0;
		break;
	
		case "de":
		selected_index_ = 1;
		break;
	
		case "fr":
		selected_index_ = 2;
		break;
	
	}
	
	//save selected index data
	ini_open("saved_data.ini");
	ini_write_real("language", "selected_index_", selected_index_);
	
}
ini_close();



//from ini
ini_open("saved_data.ini")
selected_index_ = ini_read_real("language", "selected_index_", 0);
ini_close();

if not variable_global_exists("language_") {
	global.language_ = "";	
}
	


//set gloabal language
switch(menu_languages_[selected_index_]) {
	case "English":
	global.language_ = "english";
	break;
		
	case "Deutsch":
	global.language_ = "german";
	break;
		
	case "Français":
	global.language_ = "french";
	break;
		
}
