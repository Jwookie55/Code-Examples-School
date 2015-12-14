
	var year = 0;
	var inr = .05;
				
	document.write("<table border='1' class='mytable'><tr><th>Year</th><th>Amount on deposit</th><th>Interest rate</th></tr>")
	do{
	year = year += 1;
	amt = 1000 *  (Math.pow(1.05, year));
	document.write("<tr><th>" + year + "</th><th>" + amt.toFixed(2) + "</th><th>" + inr + "</th></tr>");
	}				
	while (year < 10);
	document.write("</table><br><br>");
	year = 0;
	inr = .06

	
	document.write("<table border='1' class='mytable'><tr><th>Year</th><th>Amount on deposit</th><th>Interest rate</th></tr>");
	do{
	year = year += 1;
	amt = 1000 *  (Math.pow(1.06, year));
	document.write("<tr><th>" + year + "</th><th>" + amt.toFixed(2) + "</th><th>" + inr + "</th></tr>");
	}				
	while (year < 10);
	document.write("</table><br><br>");
	
	year = 0;
	inr = .07;
	document.write("<table border='1' class='mytable'><tr><th>Year</th><th>Amount on deposit</th><th>Interest rate</th></tr>");
	do{
	year = year += 1;
	amt = 1000 *  (Math.pow(1.07, year));
	document.write("<tr><th>" + year + "</th><th>" + amt.toFixed(2) + "</th><th>" + inr + "</th></tr>");
	}				
	while (year < 10);
	document.write("</table><br><br>");

	year = 0;
	inr = .08
	document.write("<table border='1' class='mytable'><tr><th>Year</th><th>Amount on deposit</th><th>Interest rate</th></tr>");
	do{
	year = year += 1;
	amt = 1000 *  (Math.pow(1.08, year));
	document.write("<tr><th>" + year + "</th><th>" + amt.toFixed(2) + "</th><th>" + inr + "</th></tr>");
	}				
	while (year < 10);
	document.write("</table><br><br>");
	
	year = 0;
	inr = .09
	document.write("<table border='1' class='mytable'><tr><th>Year</th><th>Amount on deposit</th><th>Interest rate</th></tr>");
	do{
	year = year += 1;
	amt = 1000 *  (Math.pow(1.09, year));
	document.write("<tr><th>" + year + "</th><th>" + amt.toFixed(2) + "</th><th>" + inr + "</th></tr>");
	}				
	while (year < 10);
	document.write("</table><br><br>");

	year = 0;
	inr = .10
	document.write("<table border='1' class='mytable'><tr><th>Year</th><th>Amount on deposit</th><th>Interest rate</th></tr>");
	do{
	year = year += 1;
	amt = 1000 *  (Math.pow(1.10, year));
	document.write("<tr><th>" + year + "</th><th>" + amt.toFixed(2) + "</th><th>" + inr.toFixed(2) + "</th></tr>");
	}				
	while (year < 10);
	document.write("</table><br><br>");