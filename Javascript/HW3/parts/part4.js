function process(){
	
	var inp1 = document.getElementById("nm1").value;
	var let1 = parseInt(inp1.charAt(0));
	var let2 = parseInt(inp1.charAt(1));
	var let4 = parseInt(inp1.charAt(3));
	var let5 = parseInt(inp1.charAt(4));
	var numL = parseInt(inp1.length);
	var yes1, yes2;
	
	if (numL != 5){
		document.getElementById("nan1").innerHTML = "<h2>Sorry. Please input a five digit number only</h2>"
		document.forms.myform.reset();
	}  else	if (let1 === let5 && let2 === let4){
		document.getElementById("nan2").innerHTML = ("<h3>Congragulations This is a Palindrome</h3>")
		}  else {
			document.getElementById("nan2").innerHTML = ("<h3>Sorry This is not a Palindrome</h3>")};
}