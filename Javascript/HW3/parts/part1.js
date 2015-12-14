
function process(){

	var homA = parseInt(document.getElementById("nm1").value);
	var midT = parseInt(document.getElementById("nm2").value);
	var finE = parseInt(document.getElementById("nm3").value);
	var acR = parseInt(document.getElementById("nm4").value);
	var finA; 
	
	if (isNaN(homA) || isNaN(midT) || isNaN(finE) || isNaN(acR)){
		document.getElementById("nan").innerHTML = "<h2>Please input numbers only</h2>"
		document.forms.myform.reset();
	}
	
	finA = parseInt( (.5 * homA) + (.2 * midT) + (.2 * finE) + (.1 * acR) );
	
	if (finA >= 90){
		document.getElementById("Fin").value = ("Your final average is ") + finA;
		document.getElementById("Fin2").value =  "Your final grade is an A";
};

	if (finA >= 80 && finA <= 89 ){
		document.getElementById("Fin").value = ("Your final average is ") + finA;
		document.getElementById("Fin2").value = " Your final grade is an B";
};

	if (finA >= 70 && finA <= 79){
		document.getElementById("Fin").value = ("Your final average is ") + finA;
		document.getElementById("Fin2").value =  "Your final grade is an C";
};	

	if (finA >= 60 && finA <= 69){
		document.getElementById("Fin").value = ("Your final average is ") + finA;
		document.getElementById("Fin2").value = "Your final grade is an D";
		document.write("Student must retake course");
};

	if (finA >= 0 && finA <= 59){
		document.getElementById("Fin").value = ("Your final average is ") + finA;
		document.getElementById("Fin2").value = "Your final grade is an F";
		 "<h2>Student must retake course</h2>";
			document.getElementById("fail").innerHTML = "<h2>Student must retake course</h2>";
};
}

