pressed_ = true;

//diferent sound on lvl finish or in level
if obj_game.menu_spawned_ = true {
	audio_play_sound(sou_click, 1, false);		
} else {
	audio_play_sound(sou_wrong, 1, false);	
}


