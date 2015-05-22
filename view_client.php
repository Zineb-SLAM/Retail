<html>
<body>
<?php
include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");
echo"<table border=\"1\">
	<tr> 
		<th>identifiant </th>
		<th>Nom</th>
		<th>Date de Naissance </th>
		<th> Adresse </th>
		<th> Ville - Pays </th>
	</tr>";
$query="SELECT * FROM Client";
$result=pg_query($idConnexion,$query);
if(!$result) echo"FAIL";

	while($row=pg_fetch_array($result))
	{
		while($row=pg_fetch_array($result,MYSQL_NUM))
		{
			echo"<tr>
				<td>$row[0]</td>
				<td>$row[1]</td>
				<td>$row[2]</td>
				<td>$row[3]</td>
				<td>$row[4] - $row[5]</td>
				<td>$row[6] - $row[7]</td>			
			</tr>";
		}
	}

mysql_close($idConnexion);


?>	<th>Prenom</th>
	
