//draw anchors
if draw_anchors_ < anchors_ {
	draw_anchors_ ++;
	
	if sound_played_ = false {
		sound_played_ = true;
		
		//audio
		audio_play_sound(sou_get_anchors, 1, false);
	}
} else {
	sound_played_ = false;	
}