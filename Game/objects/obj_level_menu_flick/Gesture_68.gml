//cal flicked dist
flicked_dist_ = start_x_ - mouse_x;


//set difficulty
//anchor error message is also in lvl diff button
var swipe_dist_ = 300;
switch(global.level_difficulty_) {
	
	//easy
	case "easy" :
		if flicked_dist_ > (1*swipe_dist_) {
			if obj_anchor_manager.anchors_ >= obj_anchor_manager.anchors_unlock_medium_ {
				
				global.level_difficulty_ = "medium";
				//audio 
				audio_play_sound(sou_flick, 1, false);
				
			} else {
				
				instance_destroy(obj_anchor_error_message); //to prevent double spawn
				var spawn_message_ = instance_create_layer(960, 540, "Messages", obj_anchor_error_message);
				spawn_message_.difficulty_to_unlock_ = "medium";
				
				//audio (also plays in diff buttons)
				audio_play_sound(sou_wrong, 1, false);
			}
		}
	break;
	
	//medium
	case "medium" :
		if flicked_dist_ > (1*swipe_dist_) {
			if obj_anchor_manager.anchors_ >= obj_anchor_manager.anchors_unlock_hard_ {
				
				global.level_difficulty_ = "hard";	
				//audio 
				audio_play_sound(sou_flick, 1, false);
				
			} else {
				
				instance_destroy(obj_anchor_error_message); //to prevent double spawn
				var spawn_message_ = instance_create_layer(960, 540, "Messages", obj_anchor_error_message);
				spawn_message_.difficulty_to_unlock_ = "hard";	
				//audio (also plays in diff buttons)
				audio_play_sound(sou_wrong, 1, false);
				
			}	
		}
		if flicked_dist_ < (-1*swipe_dist_) {
			
			global.level_difficulty_ = "easy";
			//audio 
			audio_play_sound(sou_flick, 1, false);
			
		}
	break;
	
	//hard
	case "hard" :
		if flicked_dist_ > (1*swipe_dist_) {
			if obj_anchor_manager.anchors_ >= obj_anchor_manager.anchors_unlock_expert_ {
				
				global.level_difficulty_ = "expert";
				//audio 
				audio_play_sound(sou_flick, 1, false);
				
			} else {
				
				instance_destroy(obj_anchor_error_message); //to prevent double spawn
				var spawn_message_ = instance_create_layer(960, 540, "Messages", obj_anchor_error_message);
				spawn_message_.difficulty_to_unlock_ = "expert";
				//audio (also plays in diff buttons)
				audio_play_sound(sou_wrong, 1, false);
				
			}	
		}
		if flicked_dist_ < (-1*swipe_dist_) {
			
			global.level_difficulty_ = "medium";	
			//audio 
			audio_play_sound(sou_flick, 1, false);
			
		}
	break;
	
	//expert
	case "expert" :
		if flicked_dist_ < (-1*swipe_dist_) {
			
			global.level_difficulty_ = "hard";	
			//audio 
			audio_play_sound(sou_flick, 1, false);
			
		}
	break;
	
}
