var Mystates = [0,1,2,3,4,5]
for(i=0; i<=5; ++i){
	Mystates[i]=[0,1,2,3]
}

Mystates[0][0]='AL'
Mystates[0][1]='Alabama'
Mystates[0][2]='Montgomery'
Mystates[0][3]='4,369,862'
Mystates[1][0]='AK'
Mystates[1][1]='Alaska'
Mystates[1][2]='Juneau'
Mystates[1][3]='619,500'
Mystates[2][0]='AZ'
Mystates[2][1]='Arizona'
Mystates[2][2]='Phoenix'
Mystates[2][3]='4,778,332'
Mystates[3][0]='AR'
Mystates[3][1]='Arkansas'
Mystates[3][2]='Little Rock'
Mystates[3][3]='2,551,373'
Mystates[4][0]='CA'
Mystates[4][1]='California'
Mystates[4][2]='Sacremento'
Mystates[4][3]='3,145,121'
Mystates[5][0]='CO'
Mystates[5][1]='Colorado'
Mystates[5][3]='Denver'
Mystates[5][2]='4,056,133'

function getState(){
	var state = document.getElementById("state").value;
	state = state.toUpperCase();
	
	switch(state){
		case "AL":
		case "ALABAMA":
		output=0;
		break;
		
		case "AK":
		case "ALASKA":
		output=1;
		break;
		
		case "AZ":
		case "ARIZONA":
		output=2;
		break;
		
		case "AR":
		case "ARKANSAS":
		output=3;
		break;
		
		case "CA":
		case "CALIFORNIA":
		output=4;
		break;
		
		case "CO":
		case "COLORADO":
		output=5;
		break;
		
		default:
		document.getElementById("invalid").innerHTML="Please enter a valid state name or abbreviation";
		document.getElementById("state").focus();
		return;
	};
	
	var htmlOutput = "";
	for(i=0; i<=3; ++i){
		htmlOutput += "<td>" + Mystates[output][i] + "</td>";
	}
	document.getElementById("display").innerHTML=htmlOutput;
	document.getElementById("invalid").innerHTML="";
}