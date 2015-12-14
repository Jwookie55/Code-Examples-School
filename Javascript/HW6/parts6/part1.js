function validate(){
	var check = document.getElementById("nm1").value;
	
	if(check == "" | isNaN(check)){
		document.getElementById("error").innerHTML = ("Sorry, please enter numbers only")
		document.getElementById("nm1").focus();
	} else{
		process();
	}
}



function process(){
	
	var num = parseFloat(document.getElementById("nm1").value);
	var Rnum = Math.round(num);
	var Snum = Math.round(Math.sqrt(num));
	var Rnum10 = (Math.floor(num*10 + .5)/10).toFixed(1);
	var Rnum100 = (Math.floor(num*100 + .5)/100).toFixed(2);
	var Rnum1000 = (Math.floor(num*1000 + .5)/1000).toFixed(3);
	
	document.getElementById("error").innerHTML = "";
	document.getElementById("result").value =  ("Your number was: " + num + "\nYour number rounded to the nearsest interger is: " + Rnum + "\nThe square root of your number rounded is: " + Snum + "\nYour number rounded to the tenth is: " + Rnum10 + "\nYour number rounded to the Hundreth is: " + Rnum100 + "\nYour number rounded to the thousandth is: " + Rnum1000);
}