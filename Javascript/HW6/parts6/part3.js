window.onload = findDate;

function findDate(){
	var currentDate = new Date();
	var result = "<table>";
		
		result += "<tr>";
		result += "<th colspan='2'>Current date time using the date object</th>";
		result += "</tr>";
		result += "<tr>"
		result += "<td>Date Method</td>";
		result += "<td>Output</td>";
		result += "<tr>";
		result += "<td>toString():</td>";
		result += "<td>" + currentDate.toString() + "</td>";
		result += "</tr>";
		result += "<tr>";
		result += "<td>toLocaleString():</td>";
		result += "<td>" + currentDate.toLocaleString() + "</td>";
		result += "</tr>";
		result += "<tr>";
		result += "<td>toUTCString(): </td>";
		result += "<td>" + currentDate.toUTCString() + "</td>";
		result += "</tr>";
		result += "</table>";
		
	var calc = "<table>";
		
		calc += "<tr><th colspan='2'>Date Claculations</th></tr>";
		calc += "<tr>";
		calc += "<td>Difference between Pacific Standard Time and UTC:</td>";
		calc += "<td>" + (currentDate.getTimezoneOffset() / 60) + " hours</td>";
		calc += "</tr>";
		calc += "<tr>";
		calc += "<td>Difference between Eastern Standard Time and UTC:</td>";
		calc += "<td>" + (currentDate.getTimezoneOffset() / 60 - 3) + " hours</td>";
		calc += "</tr>";
		calc += "</table>";
		    
	document.getElementById("type").innerHTML = result;  
	document.getElementById("calc").innerHTML = calc;
}



function phoneNumber(){
	var phoneNumber = document.getElementById("telNum").value;
	regexExp = /^\((\d{3})\)(\s)(\d{3})(-\d{4})$/;
	
	if(!regexExp.test(phoneNumber)){
		document.getElementById("error").innerHTML="Please use correct format - (999) 999-9999";
	} else {
		var tokens = phoneNumber.split(" ");
		var areaCode = tokens[0].substr(1,3);
		var pNumber = tokens[1].split("-");
		
		document.getElementById("area").value = areaCode;
		document.getElementById("pNum").value = pNumber[0] + "-" + pNumber[1];
	}
}