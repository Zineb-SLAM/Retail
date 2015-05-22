<?php
function fConnect($host,$port,$dbname,$user,$pass)
{
  return pg_connect("host=$host port=$port dbname=$dbname user=$user password=$pass");


}

function fMoyenne($login, $connexion)
{
$querystring="Select AVG(valeur) AS Moyenne from tNote Where etudiant='$login' ";
	$query=pg_query($connexion,$querystring);
	$res=pg_fetch_array($query);
	if(is_null($res['Moyenne']))
		return -1;
	else
		return $res['Moyenne'];


}

?>
