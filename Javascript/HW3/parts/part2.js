
function process(){

	var itm1 = parseInt(document.getElementById("nm1").value);
	var itm2 = parseInt(document.getElementById("nm2").value);
	var itm3 = parseInt(document.getElementById("nm3").value);
	var itm4 = parseInt(document.getElementById("nm4").value);
	var nam = document.getElementById("nam").value
	var ernT, solT, solT1, solT2, solT3, solT4; 
	
	if (document.getElementById("nam").value == ""){
		document.getElementById("nan1").innerHTML = "<h2>Please input a name</h2>"
	}
	if (isNaN(itm1) || isNaN(itm2) || isNaN(itm3) || isNaN(itm4)){
		document.getElementById("nan2").innerHTML = "<h2>Please input numbers only</h2>"
		document.forms.myform.reset();
	}
	
	document.getElementById("sol1").value = itm1;
	document.getElementById("sol2").value = itm2;
	document.getElementById("sol3").value = itm3;
	document.getElementById("sol4").value = itm4;
	
	solT1 = parseFloat((itm1 * 239.99));
	document.getElementById("tot1").value = solT1.toFixed(2);
	
	solT2 = parseFloat((itm2 * 129.75));
	document.getElementById("tot2").value = solT2.toFixed(2);
	
	solT3 = parseFloat((itm3 * 99.95));
	document.getElementById("tot3").value = solT3.toFixed(2);
	
	solT4 = parseFloat((itm4 * 350.89));
	document.getElementById("tot4").value = solT4.toFixed(2);
	
	solT = parseFloat((itm1 * 239.99) + (itm2 * 129.75) + (itm3 * 99.95) + (itm4 * 350.89));
	document.getElementById("solT").value = solT.toFixed(2);
	
	ernT = parseFloat(200 + (((itm1 * 239.99) + (itm2 * 129.75) + (itm3 * 99.95) + (itm4 * 350.89)) * .09));
	document.getElementById("ernT").value = ernT.toFixed(2);
}

