function process(){
	var hwem1 = document.getElementById("emp1hw").value;
	var hwem2 = document.getElementById("emp2hw").value;
	var hwem3 = document.getElementById("emp3hw").value;
	var hwem4 = document.getElementById("emp4hw").value;
	var hwem5 = document.getElementById("emp5hw").value;
	var hwem6 = document.getElementById("emp6hw").value;
	var hrem1 = document.getElementById("emp1hr").value;
	var hrem2 = document.getElementById("emp2hr").value;
	var hrem3 = document.getElementById("emp3hr").value;
	var hrem4 = document.getElementById("emp4hr").value;
	var hrem5 = document.getElementById("emp5hr").value;
	var hrem6 = document.getElementById("emp6hr").value;
	var gpem1 = 0;
	var gpem2 = 0;
	var gpem3 = 0;
	var gpem4 = 0;
	var gpem5 = 0;
	var gpem6 = 0;
	var hwem1p =  parseFloat(hwem1);
	var hwem2p =  parseFloat(hwem2);
	var hwem3p =  parseFloat(hwem3);
	var hwem4p =  parseFloat(hwem4);
	var hwem5p =  parseFloat(hwem5);
	var hwem6p =  parseFloat(hwem6);
	var hrem1p =  parseFloat(hrem1);
	var hrem2p =  parseFloat(hrem2); 
	var hrem3p =  parseFloat(hrem3); 
	var hrem4p =  parseFloat(hrem4); 
	var hrem5p =  parseFloat(hrem5); 
	var hrem6p =  parseFloat(hrem6);
	
	if (isNaN(hwem1) || isNaN(hwem2) || isNaN(hwem3) || isNaN(hwem4) || isNaN(hwem5) || isNaN(hwem6) || isNaN(hrem1) || isNaN(hrem2) || isNaN(hrem3) || isNaN(hrem4) || isNaN(hrem5) || isNaN(hrem6)){
		document.getElementById("nan1").innerHTML = "<h2>Please input numbers only</h2>"
		document.forms.myform.reset();
	} else {	 
	
	while (hwem1p > 40){
		gpem1 = gpem1 += (hrem1p * 1.5);
		hwem1p = hwem1p - 1;
	}
	
	while (hwem1p > 0 && hwem1p <= 40){
		gpem1 = gpem1 += hrem1p;
		hwem1p = hwem1p - 1;
	}
	
	while (hwem1p > 40){
		gpem1 = gpem1 += (hrem1p * 1.5);
		hwem1p = hwem1p - 1;
	}
	
	while (hwem1p > 0 && hwem1p <= 40){
		gpem1 = gpem1 += hrem1p;
		hwem1p = hwem1p - 1;
	}
	
	while (hwem2p > 40){
		gpem2 = gpem2 += (hrem2p * 1.5);
		hwem2p = hwem2p - 1;
	}
	
	while (hwem2p > 0 && hwem2p <= 40){
		gpem2 = gpem2 += hrem2p;
		hwem2p = hwem2p - 1;
	}
	
	while (hwem3p > 40){
		gpem3 = gpem3 += (hrem3p * 1.5);
		hwem3p = hwem3p - 1;
	}
	
	while (hwem3p > 0 && hwem3p <= 40){
		gpem3 = gpem3 += hrem3p;
		hwem3p = hwem3p - 1;
	}
	
	while (hwem4p > 40){
		gpem4 = gpem4 += (hrem4p * 1.5);
		hwem4p = hwem4p - 1;
	}
	
	while (hwem4p > 0 && hwem4p <= 40){
		gpem4 = gpem4 += hrem4p;
		hwem4p = hwem4p - 1;
	}
	
	while (hwem5p > 40){
		gpem5 = gpem5 += (hrem5p * 1.5);
		hwem5p = hwem5p - 1;
	}
	
	while (hwem5p > 0 && hwem5p <= 40){
		gpem5 = gpem5 += hrem5p;
		hwem5p = hwem5p - 1;
	}
	
	while (hwem6p > 40){
		gpem6 = gpem6 += (hrem6p * 1.5);
		hwem6p = hwem6p - 1;
	}
	
	while (hwem6p > 0 && hwem6p <= 40){
		gpem6 = gpem6 += hrem6p;
		hwem6p = hwem6p - 1;
	}
	
	document.getElementById("emp1hwo").value = hwem1;
	document.getElementById("emp1hro").value = hrem1;
	document.getElementById("emp1gp").value = gpem1.toFixed(2);
	document.getElementById("emp2hwo").value = hwem2;
	document.getElementById("emp2hro").value = hrem2;
	document.getElementById("emp2gp").value = gpem2.toFixed(2);
	document.getElementById("emp3hwo").value = hwem3;
	document.getElementById("emp3hro").value = hrem3;
	document.getElementById("emp3gp").value = gpem3.toFixed(2);
	document.getElementById("emp4hwo").value = hwem4;
	document.getElementById("emp4hro").value = hrem4;
	document.getElementById("emp4gp").value = gpem4.toFixed(2);
	document.getElementById("emp5hwo").value = hwem5;
	document.getElementById("emp5hro").value = hrem5;
	document.getElementById("emp5gp").value = gpem5.toFixed(2);
	document.getElementById("emp6hwo").value = hwem6;
	document.getElementById("emp6hro").value = hrem6;
	document.getElementById("emp6gp").value = gpem6.toFixed(2);
};}