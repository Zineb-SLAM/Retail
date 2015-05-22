<html>
<body>
<?php
include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");
echo<<<EOT
<FORM METHOD=POST ACTION=recap_ajout_article.php>
Code:<INPUT Name="code"> <br><br>
EOT;

$query="SELECT * FROM Sous_groupe";
	$result=pg_query($idConnexion,$query);

echo<<<EOT
Sous Groupe: <SELECT NAME="ssgroupe">
EOT;
 
while ($row=pg_fetch_array($result, MYSQL_NUM))
{
	echo"<OPTION VALUE='$row[0]'>$row[0]</OPTION>";
}
echo<<<EOT
</SELECT> <br><br>
EOT;

$query="SELECT*FROM Fournisseur";
	$result=pg_query($idConnexion,$query);

echo<<<EOT
Fournisseur: <SELECT NAME="fournisseur">
EOT;

while ($row=pg_fetch_array($result,MYSQL_NUM))
{
	echo"<OPTION VALUE='$row[0]'>$row[0]</OPTION>";
}

echo <<<EOT
</SELECT>
<INPUT type="submit">
</FORM>
EOT;
//mysql_close($idConnexion);
?>

</body>
</html>

		
		

