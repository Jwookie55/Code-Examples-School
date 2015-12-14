function setCookie(cname, cvalue, exdays) {
	var user = document.getElementById("user").value;
	var pass = document.getElementById("pass").value;
	
	if(user !== 'rosebud' || pass !== 'komodo'){
		document.getElementById("error").innerHTML = "Incorrect Password or Username";
		document.getElementById("user").value = "";
		document.getElementById("pass").value = "";
		return false;
	} else if(user == 'rosebud' && pass == 'komodo'){
		document.getElementById("correct").innerHTML = "Username and Password are correct";
		document.getElementById("error").innerHTML = " ";
		var profile = window.open("http://hills.ccsf.edu/~jsteve19/cnit133/parts6/smile.html");
		profile.focus();
		profile.document.close();
		document.getElementById("user").value = "";
		document.getElementById("pass").value = "";
	}
	
   var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return "";
}

function checkCookie() {
    var user = getCookie("username");
    if (user != "" && user == "rosebud"){
        document.getElementById("correct").innerHTML = "Welcome again " + user;
		document.getElementById("user").value = 'rosebud';
		document.getElementById("pass").value = 'komodo';
    } 
}


