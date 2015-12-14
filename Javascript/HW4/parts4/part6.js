function process(){
	
	var output3 = "<h2>My true love sent to me:</h2>"
	output2 = "";
	var output = "";
	song = "";
	var day = 1;
	
	for(day = 1; day <= 12; day++){
		
		
		
		switch(day){
			
			case 1:
			output = "<h1>on the First day of Christmas</h1><br>" + output3;
			break;
			
			case 2:
			output = "<h1>on the Second day of Christmas</h1><br>" + output3;
			break;
			
			case 3:
			output = "<h1>on the Third day of Christmas</h1><br>"+ output3;
			break;
			
			case 4:
			output = "<h1>on the Fourth day of Christmas</h1><br>"+ output3;
			break;
			
			case 5:
			output = "<h1>on the Fifth day of Christmas</h1><br>"+ output3;
			break;
			
			case 6:
			output = "<h1>on the sixth day of Christmas</h1><br>"+ output3;
			break;
			
			case 7:
			output = "<h1>on the seventh day of Christmas</h1><br>"+ output3;
			break;
			
			case 8:
			output = "<h1>on the eighth day of Christmas</h1><br>"+ output3;
			break;
			
			case 9:
			output = "<h1>on the nineth day of Christmas</h1><br>"+ output3;
			break;
			
			case 10:
			output = "<h1>on the Tenth day of Christmas</h1><br>"+ output3;
			break;
			
			case 11:
			output = "<h1>on the eleventh day of Christmas</h1><br>"+ output3;
			break;
			
			case 12:
			output = "<h1>on the Twelveth day of Christmas</h1><br>"+ output3;
			break;
		};
		switch(day){
			
			case 1:
			output2 = "<h2>A partridge in a pear tree</h2><br>";
			break;
			
			case 2:
			output2 = "<h2>Two Turtle Doves</h2>" + output2 + "<br>";
			break;
			
			case 3:
			output2 = "<h2>Three French Hens</h2>" + output2 + "<br>";
			break;
			
			case 4:
			output2 = "<h2>Four Calling Birds</h2>" + output2 + "<br>";
			break;
			
			case 5:
			output2 = "<h2>Five Golden Rings</h2>" + output2 + "<br>";
			break;
			
			case 6:
			output2 = "<h2>Six Geese a Laying</h2>" + output2 + "<br>";
			break;
			
			case 7:
			output2 = "<h2>Seven Swans a Swimming</h2>" + output2 + "<br>";
			break;
			
			case 8:
			output2 = "<h2>Eight Maids a Milking</h2>" + output2 + "<br>";
			break;
			
			case 9:
			output2 = "<h2>Nine Ladies Dancing</h2>" + output2 + "<br>";
			break;
			
			case 10:
			output2 = "<h2>Ten Lords a Leaping</h2>" + output2 + "<br>";
			break;
			
			case 11:
			output2 = "<h2>Eleven Pipers Piping</h2>" + output2 + "<br>";
			break;
			
			case 12:
			output2 = "<h2>12 Drummers Drumming</h2>" + output2 + "<br>";
			break;
		};
		song += "<p id='ani'></p><br><br>" + output + output2;
		
	}
		document.getElementById("display").innerHTML = song;
}