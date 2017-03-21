<?php

	
	$id_company=$_GET['id_company'];
		
		try
{
  $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

  $reponse = $bdd->prepare('DELETE  FROM company WHERE  id_company=:id_company');
$reponse->execute(array(
     'id_company'=> $id_company

	));
  
  echo "Company deleted";

 
		?>