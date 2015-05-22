<html>

<head>Ajout Article</head>
<body>
<?php
include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");
$code=$_POST["code"];
$ssgroupe=$_POST["ssgroupe"];
$fournisseur=$_POST["fournisseur"];
date_default_timezone_set('Europe/Paris');
$date = date("Y-m­-d");
$querystring="INSERT INTO Article VALUES ('$code',"."'$date'".",'$ssgroupe','$fournisseur');";
$query=pg_query($idConnexion,$querystring);
$result=pg_fetch_array($query);
?>
</body>
</html>
