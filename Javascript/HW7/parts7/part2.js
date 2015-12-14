function pass(){
	var password = document.getElementById("pass").value;
	
	if(password == "obama"){
		window.open('http://hills.ccsf.edu/~jsteve19/cnit133/parts7/part2_2.html');
	} else{
		document.getElementById("error").innerHTML = "Sorry that is incorrect Please try Again";
		document.getElementById("pass").focus();
	}
}

function red(){
	document.getElementById("construction").className = "red";
}

function yellow(){
	document.getElementById("construction").className = "yellow";
}

function green(){
	document.getElementById("construction").className = "green";
}

function blue(){
	document.getElementById("construction").className = "start";
}