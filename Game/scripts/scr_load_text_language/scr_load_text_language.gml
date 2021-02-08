///@func scr_load_text_language(text, language) 
///@arg text
///@arg language

var text_ = argument0;
var language_ = argument1;
var text_return_ = 0;

#region //Englisch
if language_ = "english" {
	
	switch(text_) {
		
		#region //tutorial
		case "tutorial" :
			text_return_ = "Wrong text prited";
		break;
		
		case "tutorial_ttc": //tab to continue
			text_return_ = "Tab to continue";
		break;
		
		case "tutorial_suggestion": 
			text_return_ = "Do you want to play the tutorial?";
		break;
		
		case "tutorial_suggestion_no": 
			text_return_ = "No";
		break;
		
		case "tutorial_suggestion_yes": 
			text_return_ = "Yes";
		break;
		
		case "tutorial_p1" :
			text_return_ = "Welcome to Ships and Docks. In this game you have to find the correct docking place for every ship.find the correct docking place for every ship.";
		break;
		
		case "tutorial_p2" :
			text_return_ = "Use your finger to drag the ship. If you let go the ship will snap to the nearest position.";
		break;
		
		case "tutorial_p3" :
			text_return_ = "Find the correct docking place for every ship.";
		break;
		
		case "tutorial_p4" :
			text_return_ = "Place every ship so, that it's next to the quay over the entire length.";
		break;
		
		case "tutorial_p5" :
			text_return_ = "Also pay attention to the numbers around the grid.";
		break;
		
		case "tutorial_p6" :
			text_return_ = "The numbers around the grid tell you in how many squares in the corresponding row or column there is a ship.";
		break;
		#endregion
		
		#region //in game
		case "current level display" :
			text_return_ = "stage"
		break;
		#endregion
		
		#region //difficulty
		case "difficulty easy" :
			text_return_ = "Easy"
		break;
		
		case "difficulty medium" :
			text_return_ = "Medium"
		break;
		
		case "difficulty hard" :
			text_return_ = "Hard"
		break;
		
		case "difficulty expert" :
			text_return_ = "Expert"
		break;
		#endregion
		
		#region //anchor error message
		case "anchor error message medium" :
			text_return_ = "To unlock the\nmedium stages,\nyou need:"
		break;
		
		case "anchor error message hard" :
			text_return_ = "To unlock the\nhard stages,\nyou need:"
		break;
		
		case "anchor error message expert" :
			text_return_ = "To unlock the\nexpert stages,\nyou need:"
		break;
		#endregion
		
	}
	
}
#endregion

#region //Deutsch
if language_ = "german" {
	
	switch(text_) {
		
		#region //tutorial
		case "tutorial" :
		text_return_ = "Wrong Text";
		break;
		
		case "tutorial_ttc": //tab to continue
			text_return_ = "Tippen";
		break;
		
		case "tutorial_suggestion": 
			text_return_ = "Möchten sie das Tutorial spielen?";
		break;
		
		case "tutorial_suggestion_no": 
			text_return_ = "Nein";
		break;
		
		case "tutorial_suggestion_yes": 
			text_return_ = "Ja";
		break;
		
		case "tutorial_p1" :
			text_return_ = "Willkommen zu ships&docks. In diesem Spiel geht es darum für jedes Schiff den richtigen Anlegeplatz zu finden.";
		break;
		
		case "tutorial_p2" :
			text_return_ = "Benutzen sie ihren Finger um Schiffe zu ziehen.";
		break;
		
		case "tutorial_p3" :
			text_return_ = "Finden sie den richtigen Anlegeplatz für jedes der Schiffe";
		break;
		
		case "tutorial_p4" :
			text_return_ = "Dazu muss jedes Schiff über die komplette Seite neben einem Steg liegen";
		break;
		
		case "tutorial_p5" :
			text_return_ = "Aber Achtung! Zusätzlich müssen die Zahlen um das Gitter beachtet werden.";
		break;
		
		case "tutorial_p6" :
			text_return_ = "Die Zahlen um das Gitter geben an, in wie vielen Quadraten in der jeweiligen Reihe oder Spalte ein Schiff liegt.";
		break;
		#endregion
		
		#region //in game
		case "current level display" :
		text_return_ = "Level"
		break;
		#endregion
		
		#region //difficulty
		case "difficulty easy" :
			text_return_ = "Einfach"
		break;
		
		case "difficulty medium" :
			text_return_ = "Mittel"
		break;
		
		case "difficulty hard" :
			text_return_ = "Schwer"
		break;
		
		case "difficulty expert" :
			text_return_ = "Experte"
		break;
		#endregion
		
		#region //anchor error message
		case "anchor error message medium" :
			text_return_ = "Um die mittleren Level freizuschalten, benötigen sie:";
		break;
		
		case "anchor error message hard" :
			text_return_ = "Um die schweren Level freizuschalten, benötigen sie:"
		break;
		
		case "anchor error message expert" :
			text_return_ = "Um die Experten Level freizuschalten, benötigen sie:"
		break;
		#endregion
	}
	
}
#endregion

#region //Französisch
if language_ = "french" {
	
	switch(text_) {
		
		#region //tutorial
		case "tutorial" :
		text_return_ = "Bienvenue sur ships&docks, dans ce jeu vous devez trouver la bonne place d'amarrage pour chaque navire. \n\nLes nombres autour de la grille vous indiquent le nombre en nombre de carrés dans la ligne ou la colonne correspondante, il y a un navire. \n\nChaque navire doit être à quai sur toute la longueur d'un côté. Peu importe qu'elle soit amarrée à bâbord ou à tribord.";
		break;
		
		case "tutorial_ttc": //tab to continue
			text_return_ = "Cliquète";
		break;
		
		case "tutorial_suggestion": 
			text_return_ = "Voulez-vous jouer le tutoriel ?";
		break;
		
		case "tutorial_suggestion_no": 
			text_return_ = "Non";
		break;
		
		case "tutorial_suggestion_yes": 
			text_return_ = "Oui";
		break;
		
		case "tutorial_p1" :
			text_return_ = "Bienvenue sur ships&docks, dans ce jeu vous devez trouver la bonne place d'amarrage pour chaque navire.";
		break;
		
		case "tutorial_p2" :
			text_return_ = "Utilise ton doigt pour traîner le vaisseau dans les parages";
		break;
		
		case "tutorial_p3" :
			text_return_ = "Trouver le bon lieu d'amarrage pour chaque navire";
		break;
		
		case "tutorial_p4" :
			text_return_ = "Chaque navire doit être à quai sur toute la longueur d'un côté.";
		break;
		
		case "tutorial_p5" :
			text_return_ = "Mais gardez aussi un oeil sur les chiffres autour de la grille.";
		break;
		
		case "tutorial_p6" :
			text_return_ = "Ils vous indiquent combien de cases dans la collum ou la rangée ont un bateau dedans.";
		break;
		#endregion
		
		#region //in game
		case "current level display" :
		text_return_ = "étape"
		break;
		#endregion
		
		#region //difficulty
		case "difficulty easy" :
			text_return_ = "Simple"
		break;
		
		case "difficulty medium" :
			text_return_ = "Moyenne"
		break;
		
		case "difficulty hard" :
			text_return_ = "Difficile"
		break;
		
		case "difficulty expert" :
			text_return_ = "Expert"
		break;
		#endregion
		
		#region //anchor error message
		case "anchor error message medium" :
			text_return_ = "Pour déverrouiller les étages moyens dont vous avez besoin:"
		break;
		
		case "anchor error message hard" :
			text_return_ = "Pour déverrouiller les étapes difficiles dont vous avez besoin:"
		break;
		
		case "anchor error message expert" :
			text_return_ = "Pour débloquer les étapes expertes dont vous avez besoin:"
		break;
		#endregion
	}
	
}
#endregion


//return
return text_return_;