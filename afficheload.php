<?php

		$data=array();
	
		
		try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 
$reponse = $bdd->query('SELECT * FROM chargement  ORDER BY id_load DESC');
  
  

  


    while($donnees=$reponse->fetch()){
     $data[]=$donnees;
	
		
		}
		echo json_encode($data);
		?>