var numb=[0,1,2,3,4,5,6,7,8,9];
var counter =0;

function calc(){
	var input = document.getElementById("num").value;
	if(isNaN(input) || input == ""){
		document.getElementById("invalid").innerHTML = "Please input numbers only";
		document.getElementById("num").focus();
	}
	if(input < 10 || input > 100){
		document.getElementById("invalid").innerHTML = "Please input numbers between 10 and 100 only"
		document.getElementById("num").focus();
	} else {
		document.getElementById("invalid").innerHTML = "";
		numb[counter] = input;
		counter++;
		document.getElementById("count").innerHTML = "Enter " + (10-counter) + " more numbers";
		document.getElementById("num").focus();
	}
	if(counter == 10){
		document.getElementById("count").innerHTML = "";
		document.getElementById("result").innerHTML = "Your numbers were " + numb.filter(function(elem, pos){
			return numb.indexOf(elem) == pos;});
			document.getElementById("invalid").innerHTML = "";
	}
}