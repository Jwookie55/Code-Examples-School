var a=0, b=0, c=0, d=0, e=0, f=0, g=0, h=0, i=0;
function salesCalc(){
	var input= document.getElementById("saleT").value;
	var pay= ((input*.09) + 200);
	var payChart = [a,b,c,d,e,f,g,h,i];
	if(isNaN(input)){
		document.getElementById("invalid").innerHTML="Please enter numbers only";
	}
	if(pay >= 200.00 && pay <= 299.99){
		a++;
	}			
	if(pay >= 300.00 && pay <= 399.99){
		b++;
	}
	if(pay >= 400.00 && pay <= 499.99){
		c++;
	}
	if(pay >= 500.00 && pay <= 599.99){
		d++;
	}
	if(pay >= 600.00 && pay <= 699.99){
		e++;
	}
	if(pay >= 700.00 && pay <= 799.99){
		f++;
	}
	if(pay >= 800.00 && pay <= 899.99){
		g++;
	}
	if(pay >= 900.00 && pay <= 999.99){
		h++;
	}
	if(pay >= 1000.00){
		i++;
	}
	document.getElementById("result").innerHTML= "<table border=1><tr><th>Earnings Range</th><th># of employees in range</th></tr><tr><td>$200.00 - 299.99</td><td>" + a + "</td></tr>\n <tr><td>$300.00 - 399.99</td><td>" + b + "</td></tr>\n<tr><td>$400.00 - 499.99</td><td>" + c + "</td></tr>\n<tr><td>$500.00 - 599.99</td><td>" + d + "</td></tr>\n<tr><td>$600.00 - 699.99</td><td>" + e + "</td></tr>\n<tr><td>$700.00 - 799.99</td><td>" + f + "</td></tr>\n<tr><td>$800.00 - 899.99</td><td>" + g + "</td></tr>\n<tr><td>$900.00 - 999.99</td><td>" + h + "</td></tr>\n<tr><td>$1000.00 and over</td><td>" + i + "</td></tr>\n</table>";
	document.getElementById("saleT").focus();
}