<?php
$nom_compagnie=$_GET['nom_compagnie'];
		$data=array();
	
		
		try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 
$reponse = $bdd->prepare('SELECT * FROM company  WHERE nom_compagnie LIKE "%":nom_compagnie"%" ORDER BY nom_compagnie');
  $reponse->execute(array(
   'nom_compagnie'=>$nom_compagnie)); 

  


    while($donnees=$reponse->fetch()){
     $data[]=$donnees;
	
		
		}
		echo json_encode($data);
		?>