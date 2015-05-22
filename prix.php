<html>
<body>
<?php
include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");
echo<<<EOT
<FORM METHOD=POST ACTION=recap_prix.php>
EOT;
$query="SELECT code FROM Article";
	$result=mysql_query($query);

echo<<<EOT
<SELECT NAME="article">
EOT;
while ($row = mysql_fetch_array($result, MYSQL_NUM))
{
	echo "<OPTION VALUE='$row[0]'>$row[0]</OPTION>";
}

echo<<<EOT
<br>
Prix de Fournisseur:<INPUT Name="prixf"> <br>
Prix de vente:<INPUT Name="prixv"> <br>
EOT;
mysql_close($idConnexion);
?>
