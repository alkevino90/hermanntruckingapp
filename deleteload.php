<?php

	
	$id_load=$_GET['id_load'];
		
		try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

  $reponse = $bdd->prepare('DELETE  FROM chargement WHERE  id_load=:id_load');
$reponse->execute(array(
     'id_load'=> $id_load

	));
  
  echo "load deleted";

 
		?>