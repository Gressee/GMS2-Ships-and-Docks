//time
time_++;


//check if ad is ready
if GoogleMobileAds_InterstitialStatus() == "Ready" {
	
	if not interstitial_loaded_ = true {
		interstitial_loaded_ = true;
	}
	
}



	


//show ad
if show_ad_ == true {
	interstitial_loaded_ = false;
	show_ad_ = false;
	game_break_ = false;
	time_ = 0;
	
	GoogleMobileAds_ShowInterstitial();
}

