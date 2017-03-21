<?php

		$data=array();
	$id_driver=$_GET['id_driver'];
		
		try
{
     $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

  $reponse = $bdd->prepare('SELECT * FROM driver WHERE  id_driver=:id_driver');
$reponse->execute(array(
     'id_driver'=> $id_driver

	));
  
  

  


    while($donnees=$reponse->fetch()){
     $data[]=$donnees;
	
		
		}
		echo json_encode($data);
		?>