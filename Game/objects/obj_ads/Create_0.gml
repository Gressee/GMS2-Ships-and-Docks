//exit if not on android 
if not os_type == os_android {
	instance_destroy();
}

//variables
interstitial_loaded_ = false;
show_ad_ = false;
game_break_ = false;
time_ = 0;


//setup for AdMob
//Android
app_id_ = "ca-app-pub-2340990164560901~3698437206";
interstitial_id_ = "ca-app-pub-2340990164560901/5762914645";		


//load interstitial on background
GoogleMobileAds_Init(interstitial_id_, app_id_);
GoogleMobileAds_LoadInterstitial();


//use test ads
GoogleMobileAds_UseTestAds(true, "17977E9E2FC031CEEED32BBE156584F0");