function process(){
	if ($("#myform").valid()){
	var input;
	var valinp = true;
	
	input = document.getElementById("nm1").value;
	
	switch(input){
		
		case "1":
		output = "<ul style='list-style-type:square;'>"
		break;
		
		case "2":
		output = "<ol>"
		break;
		
		case "3":
		output = "<ol style='list-style-type: upper-alpha;'>"
		break;
		
		default:
		valinp = false;
	}
	
	var htmlOutput = "";
	
	if (valinp == false){
		document.getElementById("nan1").innerHTML = ("<h2>Please choose 1, 2 or 3 only</h2>")
		document.forms.myform.reset();
	} else for (var i =1; i<=3; ++i){
		htmlOutput += "<li>List item</li>";
	}
	
	document.getElementById("display").innerHTML = (output + htmlOutput);
}}