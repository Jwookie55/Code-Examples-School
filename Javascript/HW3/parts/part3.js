
function process(){

	var accN = parseInt(document.getElementById("nm1").value);
	var balB = parseInt(document.getElementById("nm2").value);
	var totS = parseInt(document.getElementById("nm3").value);
	var totP = parseInt(document.getElementById("nm4").value);
	var allC = parseInt(document.getElementById("nm5").value);
	var newB, crdA, crdO; 
	
	if (document.getElementById("nm1").value == ""){
		document.getElementById("nan1").innerHTML = "<h2>Please input an account number</h2>"
	}
	
	if (isNaN(accN) || isNaN(balB) || isNaN(totS) || isNaN(totP) || isNaN(allC)){
		document.getElementById("nan2").innerHTML = "<h2>Please input numbers only</h2>"
		document.forms.myform.reset();
	}
	
	newB = parseFloat(balB + totS - totP).toFixed(2);
	crdA = parseFloat(allC - newB).toFixed(2);
	crdO = parseFloat(newB - allC).toFixed(2);
	
	if (newB > allC){
		document.getElementById("results").value = ("Credit account summary\nAccount number: " + accN.toFixed(2) + "\nCredit limit: " + allC.toFixed(2) + "\nBalance at beginning of month: " + balB.toFixed(2) + "\nTotal amount charged this month: " + totS.toFixed(2) + "\nTotal amount of credits this month: " + totP.toFixed(2) + "\nYour new balance is: " + newB + "\nCredit limit exceeded by: " + crdO)
	}
	
	if (newB <= allC){
		document.getElementById("results").value = ("Credit account summary\nAccount number: " + accN.toFixed(2) + "\nCredit limit: " + allC.toFixed(2) + "\nBalance at beginning of month: " + balB.toFixed(2) + "\nTotal amount charged this month: " + totS.toFixed(2) + "\nTotal amount of credits this month: " + totP.toFixed(2)+ "\nYour new balance is: " + newB + "\nCredit available: " + crdA)
	}
}

