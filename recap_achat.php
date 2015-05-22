<html>

<head>
</head>

<body>
<?php 
include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");
$res=mysql_query($idConnexion);
$magasin=$_POST["magasin"];
$client=$_POST["client"];
$modep=$_POST["modep"];
$article=$_POST["article"];
$caisse=$_POST["caisse"];
$qte=$_POST["qte"];
if($client) 

	$query="INSERT INTO `Achat` (id,magasin_id,client_id,mode_paiement,date_achat,caisse) 
		     VALUES (NULL,'$magasin','$client','$modep',current_timestamp(),'$caisse') 
		     RETURNING id";

else

	$query="INSERT INTO `Achat` (id,magasin_id,client_id,mode_paiement,date_achat,caisse) 
		     VALUES (NULL,'$magasin',NULL,'$modep',current_timestamp(),'$caisse') 
		     RETURNING id";

$res=pg_query($idConnexion,$query);
$result=pg_fetch_array($res);
$query="INSERT INTO `Achat_Article`(code_article,achat_id,quantite) VALUES ('$article','$result','$qte')";
mysql_close($idConnexion);
?>
</body>
</html>
