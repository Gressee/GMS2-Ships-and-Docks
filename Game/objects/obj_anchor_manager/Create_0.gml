//vars
sound_played_ = false;


//load anchors or creaze vars
ini_open("data_saved.ini");
anchors_ = ini_read_real("anchor_management_", "anchors_", 0);
ini_close();


draw_anchors_ = anchors_;

//unlock (if not enought anchors message shown in obj_level_menu_flick)
//sould be 80% of possible anchors
anchors_unlock_easy_ = 0;
anchors_unlock_medium_ = 50;
anchors_unlock_hard_ = 130;
anchors_unlock_expert_ = 230;


