var sect ="";
sect += "<table border=\"1\" class=\"r\">";
sect += "<tr><th>Number</th><th>Square</th><th>Cube</th>";
sect += "<tr><td>7</td><td>49</td><td>343</td></tr>";
sect += "<tr><td>8</td><td>64</td><td>512</td></tr>";
sect += "<tr><td>9</td><td>81</td><td>729</td></tr>";
sect += "<tr><td>10</td><td>100</td><td>1000</td></tr>";
sect += "</table>";

function showTable() {
	document.getElementById("table2").innerHTML = sect;
}


document.getElementById('display').onclick=function(){                          //jquery button shows second table
  showTable();
};
	