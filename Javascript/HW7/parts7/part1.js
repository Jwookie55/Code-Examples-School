function changeFormat(){
	
	var Bcolor = myform.elements["Bcolor"];
	var color;
	for(var i=0; i<Bcolor.length; i++){
		if(Bcolor[i].checked){
			color = Bcolor[i].value;
			break;
		}
	}
	
	switch(color){
		case "blue":
		document.getElementById("construction").className = "start";
		break;
		
		case "white":
		document.getElementById("construction").className = "white";
		break;
		
		case "gray":
		document.getElementById("construction").className = "gray";
		break;
	}
	
	var Fsize = myform.elements["Fsize"];
	var size;
	for(var i=0; i<Fsize.length; i++){
		if(Fsize[i].checked){
			size = Fsize[i].value;
			break;
		}
	}
	
	switch(size){
		case "small":
		document.getElementById("size").className = "small";
		break;
		
		case "medium":
		document.getElementById("size").className = "FSstart";
		break;
		
		case "large":
		document.getElementById("size").className = "large";
		break;
	}
	
	var Ffamily = myform.elements["Ffamily"];
	var family;
	for(var i=0; i<Ffamily.length; i++){
		if(Ffamily[i].checked){
			family = Ffamily[i].value;
			break;
		}
	}
	
	switch(family){
		case "sans":
		document.getElementById("family").className = "FFstart";
		break;
		
		case "wall":
		document.getElementById("family").className = "wall";
		break;
		
		case "roman":
		document.getElementById("family").className = "roman";
		break;
	}
	
	var Fstyle = myform.elements["Fstyle"];
	var style;
	for(var i=0; i<Fstyle.length; i++){
		if(Fstyle[i].checked){
			style = Fstyle[i].value;
			break;
		}
	}
	
	switch(style){
		case "italic":
		document.getElementById("style").className = "italic";
		break;
		
		case "oblique":
		document.getElementById("style").className = "oblique";
		break;
		
		case "normal":
		document.getElementById("style").className = "normal";
		break;
	}
	
	var Fweight = myform.elements["Fweight"];
	var weight;
	for(var i=0; i<Fweight.length; i++){
		if(Fweight[i].checked){
			weight = Fweight[i].value;
			break;
		}
	}
	
	switch(weight){
		case "normal":
		document.getElementById("weight").className = "FWstart";
		break;
		
		case "bold":
		document.getElementById("weight").className = "bold";
		break;
	}
}

