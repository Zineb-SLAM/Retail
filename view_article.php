<html>
<body>
<?php
include("connect.php");
$idConnexion=fConnect("tuxa.sme.utc","5432","dbnf17p094","nf17p094","wNL9GXok");
$query="SELECT * FROM Article WHERE date_code A
	FROM (SELECT Article.MAX(date_code) AS recent FROM Article GROUP BY Article.code)B
	JOIN Article A ON B.code=A.code 
		AND B.recent=A.date_code
	GROUP BY (code)";
?>
