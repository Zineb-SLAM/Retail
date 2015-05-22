<html>

<head> Ajout Prix</head>

<body>
<?php

include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");$
$article=$_POST["article"];
$prixf=$_POST["prixf"];
$prixv=$_POST["prixv"];
date_default_timezone_set('Europe/Paris');
$date = date("Y-m­-d");
$query="INSERT INTO Prix 
		VALUES (current_timestamp(),'$article', '$prixf', '$prixv')";
$res=pg_query($idConnexion,$query);
$result=pg_fetch_array($res);
mysql_close($idConnexion);
?>


</body>
</html>
