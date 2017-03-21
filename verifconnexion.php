
<?php
$login=$_GET['login'];
$passe=$_GET['passe'];

try
{
     $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 
$reponse = $bdd->prepare('SELECT *  from membre WHERE login=:login  AND passe=:passe');
 $reponse->execute(array(
    'login' => $login,
    'passe' => $passe));
	 $resultat=$reponse->fetch();
	  $data[]=$resultat;
	if($resultat['login']!=$login || $resultat['passe']!=$passe ){
   
     echo"0" ;
	 }

	  else{
	  
	echo"1";
		
  }
  
	   
	   ?>