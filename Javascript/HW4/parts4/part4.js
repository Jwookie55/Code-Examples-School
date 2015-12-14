function process(){
	
	var total = 0;
	
	for(item = 1; item <= 5; item++){
		var prodNo = document.getElementById("prod" + item).value;
		var subTot
		switch(prodNo){
			case "1":
			price = 2.98;
			break;
			
			case "2":
			price = 4.50;
			break;
			
			case "3":
			price = 9.98;
			break;
			
			case "4":
			price = 4.49;
			break;
			
			case "5":
			price = 6.87;
			break;
		};
		switch(prodNo){
			case "1":
			qty = document.getElementById("sol1").value;
			break;
			
			case "2":
			qty = document.getElementById("sol2").value;
			break;
			
			case "3":
			qty = document.getElementById("sol3").value;
			break;
			
			case "4":
			qty = document.getElementById("sol4").value;
			break;
			
			case "5":
			qty = document.getElementById("sol5").value;
			break;
		};
		subTot = qty * price;
		total = total + subTot;
		
		document.getElementById("tot" + item).value = subTot.toFixed(2);
	}
	document.getElementById("solT").value = total.toFixed(2);
}