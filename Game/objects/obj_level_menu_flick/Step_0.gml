//lerp to difficulty pos
var swipe_speed_ = 0.3;
switch(global.level_difficulty_) {
	
	case "easy" :
		x = lerp(x, 0, swipe_speed_);
		
		if point_distance(x, 0, 0, 0) < 20{
			x = 0;
		}
	break;
	
	case "medium" :
		x = lerp(x, -2200, swipe_speed_);
		
		if point_distance(x, 0, -2200, 0) < 20{
			x = -2200;
		}
	break;
	
	case "hard" :
		x = lerp(x, -4400, swipe_speed_);	
		
		if point_distance(x, 0, -4400, 0) < 20{
			x = -4400;
		}
	break;
	
	case "expert" :
		x = lerp(x, -6600, swipe_speed_);
		
		if point_distance(x, 0, -6600, 0) < 20{
			x = -6600;
		}
	break;
	
}






