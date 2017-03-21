
<?php
$login=$_GET['login'];


try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 
$reponse = $bdd->prepare('SELECT *  from membre WHERE login=:login');
 $reponse->execute(array(
    'login' => $login));
	 $resultat=$reponse->fetch();
	  $data[]=$resultat;


	
	  
	echo json_encode($data);
		
  
  
	   
	   ?>