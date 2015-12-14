
var num1;
var num2;
question();

function question(){
	
	num1 = parseInt(Math.floor((Math.random() * 9)));
	num2 = parseInt(Math.floor((Math.random() * 9)));
	
	document.getElementById("equate").innerHTML = "How much is " + num1 + " times " + num2 + "?";
}

function check(){
	
	var ansC = num2 * num1;
	var ansU = parseInt(document.getElementById("ans").value);
		
	if (isNaN(ansU)){
		document.getElementById("result").innerHTML = "<h2>Please enter numbers only</h2>";
		document.forms.myform.reset();
	}
	
	else if (ansU === ansC){
		
		document.getElementById("result").innerHTML = "<h3>Very Good!</h3>";
		document.forms.myform.reset();
		cont();
				
	}  else {
		
		document.getElementById("result").innerHTML = "<h2>No, Please try again</h2>";
		document.forms.myform.reset();
		}
}

	
function cont() {
    
	var r = confirm("Would you like to continue");
    if (r == true) {
		question();
	} else {
       document.getElementById("result").innerHTML = "<h3>Thanks for playing</h3>";
	}
	return r;
}
	
	