// button pressed
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
	
	//set global difficulty if enough anchors
	switch(level_difficulty_) {
		
		case "easy" :
			if obj_anchor_manager.anchors_ >= obj_anchor_manager.anchors_unlock_easy_ {
				global.level_difficulty_ = level_difficulty_;	
			} else {
				
				instance_destroy(obj_anchor_error_message); //to prevent double spawn
				var spawn_message_ = instance_create_layer(960, 540, "Messages", obj_anchor_error_message);
				spawn_message_.difficulty_to_unlock_ = "easy";
				//audio (also plays in diff buttons)
				audio_play_sound(sou_wrong, 1, false);
				
			}
		break;
		
		case "medium" :
			if obj_anchor_manager.anchors_ >= obj_anchor_manager.anchors_unlock_medium_ {
				global.level_difficulty_ = level_difficulty_;	
			} else {
				
				instance_destroy(obj_anchor_error_message); //to prevent double spawn
				var spawn_message_ = instance_create_layer(960, 540, "Messages", obj_anchor_error_message);
				spawn_message_.difficulty_to_unlock_ = "medium";
				//audio (also plays in diff buttons)
				audio_play_sound(sou_wrong, 1, false);
				
			}
		break;
		
		case "hard" :
			if obj_anchor_manager.anchors_ >= obj_anchor_manager.anchors_unlock_hard_ {
				global.level_difficulty_ = level_difficulty_;	
			} else {
				instance_destroy(obj_anchor_error_message); //to prevent double spawn
				var spawn_message_ = instance_create_layer(960, 540, "Messages", obj_anchor_error_message);
				spawn_message_.difficulty_to_unlock_ = "hard";
				//audio (also plays in diff buttons)
				audio_play_sound(sou_wrong, 1, false);
				
			}
		break;
		
		case "expert" :
			if obj_anchor_manager.anchors_ >= obj_anchor_manager.anchors_unlock_expert_ {
				global.level_difficulty_ = level_difficulty_;	
			} else {
				
				instance_destroy(obj_anchor_error_message); //to prevent double spawn
				var spawn_message_ = instance_create_layer(960, 540, "Messages", obj_anchor_error_message);
				spawn_message_.difficulty_to_unlock_ = "expert";	
				//audio (also plays in diff buttons)
				audio_play_sound(sou_wrong, 1, false);
				
			}
		break;
		
	}
		
}


//button fly in animation
animation_time_ ++;

switch(level_difficulty_) {
	
	case "easy" :
		animation_delay_ = 5;
		if animation_time_ > animation_delay_ {
			y = lerp(y, 130, 0.3)	
		}
	break;
	
	case "medium" :
		animation_delay_ = 25;
		if animation_time_ > animation_delay_ {
			y = lerp(y, 130, 0.3)	
		}
	break;
	
	case "hard" :
		animation_delay_ = 45;
		if animation_time_ > animation_delay_ {
			y = lerp(y, 130, 0.3)	
		}
	break;
	
	case "expert" :
		animation_delay_ = 65;
		if animation_time_ > animation_delay_ {
			y = lerp(y, 130, 0.3)	
		}
	break;
		
}









