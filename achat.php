<html>
<body>
<?php
include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");
echo<<<EOT
<FORM METHOD=POST ACTION=recap_achat.php>
EOT;
//***********Magasin id**************
$query=("SELECT * FROM Magasin");
$result=pg_query($idConnexion,$query);

echo<<<EOT
	Magasin: <SELECT NAME="magasin">
EOT;

while ($row = pg_fetch_array($result, MYSQL_NUM))
{
	echo "<OPTION VALUE='$row[0]'>$row[0]-- $row[1]</OPTION>";
}

echo<<<EOT
</SELECT>
EOT;

//***********Client id************
$query=("SELECT * FROM Client");
$result=pg_query($idConnexion,$query);
echo<<<EOT
	Client Fidèle : <SELECT NAME="client">
EOT;
while ($row =pg_fetch_array($result,MYSQL_NUM))
{
	echo"<OPTION VALUE='$row[0]'>$row[0]</OPTION>";
}

//********** Code Article***********
$query=("SELECT code FROM Article");
$result=pg_query($idConnexion,$query);
echo<<<EOT
Code Article <SELECT Name="article">
EOT;
while($row=pg_fetch_array($result,MYSQL_NUM))
{
	echo"<OPTION VALUE='$row[0]'>$row[0]</OPTION>";
}

//************Mode Paiement, Caisse, Quantite **********
echo <<<EOT
</SELECT>
Mode Paiement: <SELECT Name="modep">
	<OPTION VALUE="espece"> Espece</Option>
	<OPTION VALUE="CarteBancaire">CarteBancaire</OPTION>
	<OPTION VALUE="Cheque">Cheque</OPTION>
</SELECT><br>
Caisse: <INPUT Name="caisse"><br>
Quantite:<INPUT Name="qte"><br>
<INPUT type="submit">
</FORM>
EOT;
?>
</body>
</html>

		
		

