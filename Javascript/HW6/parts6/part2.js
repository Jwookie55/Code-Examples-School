function process(){
	var input = document.getElementById("search").value.toLowerCase();
	var param = document.getElementById("find").value.toLowerCase();
	var Sinput = input.split(param);
	var count = (Sinput.length) - 1;
	
	if(count > 0){
	document.getElementById("result").value = count;
	} else if(count == 0){
		var Ztext = "<html>\n<head>\n<title>No results found</title>\n</head><body>\n<div align='center'>\n<p>Your search character was, " + param + " , Your search character was not found in text string!</p>\n<input type='button' value='Close Window' onclick='window.close()'>\n</div>\n</body>\n</html>";
		var Zwin = window.open("","error", "top=500,left=100,width=300,height=100,resizable=yes,scrollbars=yes");
		Zwin.focus();
		Zwin.document.write(Ztext);
		Zwin.document.close();
	}
}

function process2(){
	var input = document.getElementById("search").value.toLowerCase();
	var param = document.getElementById("find").value.toLowerCase();
	var count = 0;
	var paramL = param.length;
		
if(paramL > 1){
	var Minput = input.split(" ");
	
	for(i=0; i <=Minput.length -1; i++){
		if(Minput[i] == param){
			count++;
			}
		}
	} else{	
	
	for(i=0; i <=input.length; i++){
		var Sinput = input.charAt(i);
		
		if(Sinput == param){
			count++;
		}
	}
	}
	
if(count > 0){
	document.getElementById("result").value = count;
	} else if(count == 0){
		var Ztext = "<html>\n<head>\n<title>No results found</title>\n</head><body>\n<div align='center'>\n<p>Your search character was, " + param + " , Your search character was not found in text string!</p>\n<input type='button' value='Close Window' onclick='window.close()'>\n</div>\n</body>\n</html>";
		var Zwin = window.open("","error", "top=500,left=100,width=300,height=100,resizable=yes,scrollbars=yes");
		Zwin.focus();
		Zwin.document.write(Ztext);
		Zwin.document.close();
	}
}


