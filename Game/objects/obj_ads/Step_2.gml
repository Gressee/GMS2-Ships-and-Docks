//check if ad should be played (every 2.5 min)
if interstitial_loaded_ == true and time_ >= 9000 and game_break_ = true{
		show_ad_ = true;
} 

//reset game break
game_break_ = false;