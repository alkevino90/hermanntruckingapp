<?php

$nom_driver=$_GET['nom_driver'];

		$data=array();
	
		
		try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 

 
   
    $reponse = $bdd->prepare('SELECT * FROM driver WHERE  nom_driver  LIKE "%":nom_driver"%" ORDER BY nom_driver');
  $reponse->execute(array(
   'nom_driver'=>$nom_driver)); 



    while($donnees=$reponse->fetch()){
     $data[]=$donnees;
	
		
		}
		echo json_encode($data);
		?>