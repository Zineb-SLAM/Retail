<html>
<head></head>
<body>
<h1> Ajout Client </h1>
<?php
include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");
$nom=$_POST["nom"];
$prenom=$_POST["prenom"];
$annee=$_POST["annee"];
$mois=$_POST["mois"];
$jour=$_POST["jour"];
$num=$_POST["num"];
$cp=$_POST["cp"];
$rue=$_POST["rue"];
$ville=$_POST["ville"];
$pays=$_POST["pays"];

$querystring="insert into Client
		(`id`,
		`nom`,
		`prenom`,
		`date_naissance`,
		`adresse_num`,`adresse_rue`,`adresse_cp`,
		`ville`,`pays`) 
	VALUES
		(NULL,
		'$nom', 
		'$prenom', 
		'$annee-$mois-$jour',
		'$num','$rue','$cp',
		'$ville','$pays')";

echo "<br>$querystring<br>";
$query=pg_query($idConnexion,$querystring);
$result=pg_fetch_array($query);
//pg_close($idConnexion);
	
?>
<br><br><br>
	Nom:<?php echo"$nom"; ?> <br>
	Prenom:<?php echo"$prenom";?> <br>
	Ne le: <?php echo"$jour";?> / <?php echo"$mois";?> / <?php echo"$annee";?> <br>
	Habite le  Le <?php echo"$num - $rue - $cp, $ville , $pays";?><br>


</body>
</html>
