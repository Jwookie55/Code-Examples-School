function process1(){
	var sumadd = 0, sumprod = 1; 
	for (var num = 5; num <= 20; num += 3)
	{
		sumadd += num; 
		sumprod *= num;
	
	document.getElementById("process1").innerHTML = ("The sum of every third number from 5 to 20 is ") + sumadd + "<br>" + ("The product of every third number from 5 to 20 is ") + sumprod.toLocaleString() + "<br><br>"
	}
}

function process2(){
	var sumadd = 0, sumprod = 1, num = -1;
	while (num < 31){
		num += 4;
		sumadd += num;
		sumprod *= num;		
	}
	document.getElementById("process2").innerHTML = "<br>" + ("The sum of every fourth number from 3 to 31 is ") + sumadd + "<br>" + ("The product of every fourth number from 3 to 31 is ") + sumprod.toLocaleString() + "<br>"
}