<?php

	
	$id_driver=$_GET['id_driver'];
		
		try
{
     $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

  $reponse = $bdd->prepare('DELETE  FROM driver WHERE  id_driver=:id_driver');
$reponse->execute(array(
     'id_driver'=> $id_driver

	));
  
  echo "driver deleted";

 
		?>