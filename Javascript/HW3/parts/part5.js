function celsius(){
	
	var tempF = parseInt(document.getElementById("nm1").value);
	var tempC;
	tempC = 5/9 * (tempF -32);
	
	if (isNaN(tempF)){
		document.getElementById("nan1").innerHTML = "<h2>Please input a numeric value</h2>" 
		document.forms.myform.reset();
	}  else {	
	document.getElementById("relC").innerHTML = "<p>Temperature Fahrenheit was: " + tempF + " Deg <br>the temerature Celsius is: " + tempC.toFixed(2) + " Deg</p>"}
}

function fahrenheit(){
	
	var tempC = parseInt(document.getElementById("nm2").value);
	var tempF
	tempF = (9/5 * tempC) + 32
	
	if (isNaN(tempC)){
		document.getElementById("nan2").innerHTML = "<h2>Please input a numeric value</h2>" 
		document.forms.myform.reset();
	}  else {	
	document.getElementById("relF").innerHTML = "<p>Temperature Celsius was: " + tempC + " Deg <br>the temerature Fahrenheit is: " + tempF.toFixed(2) + " Deg</p>"}
	}
	
	