//see yoyogames article about ads
var id_ = async_load[? "id"];
if id_ == GoogleMobileAds_ASyncEvent {
	var ident = async_load[? "type"];
	switch (ident) {
		
		//check for ad loaded
		case "interstitial_load":
			if async_load[? "loaded"] == 1 {
                interstitial_loaded_ = true;
			}
		break;
		
		//load new add when old closed
		case "interstitial_closed":
			GoogleMobileAds_LoadInterstitial();
		break;
	}
	}