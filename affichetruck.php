<?php

$nom_driver=$_GET['nom_driver'];
$truck_number=$_GET['nom_driver'];

		$data=array();
	
		
		try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 

 
   
    $reponse = $bdd->prepare('SELECT * FROM driver WHERE  nom_driver  LIKE "%":nom_driver"%" OR truck_number LIKE "%":truck_number"%"  ORDER BY id_driver DESC');
  $reponse->execute(array(
   'nom_driver'=>$nom_driver,
   'truck_number'=>$truck_number)); 



    while($donnees=$reponse->fetch()){
     $data[]=$donnees;
	
		
		}
		echo json_encode($data);
		?>