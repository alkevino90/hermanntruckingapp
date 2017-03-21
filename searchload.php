<?php

$nom_compagnie=$_GET['nom_compagnie'];
$load_number=$_GET['nom_compagnie'];
$work_order=$_GET['nom_compagnie'];
$num_invoice=$_GET['nom_compagnie'];
		$data=array();
	
		
		try
{
  $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 

 
   
    $reponse = $bdd->prepare('SELECT * FROM chargement WHERE  nom_compagnie  LIKE "%":nom_compagnie"%" OR load_number LIKE "%":load_number"%" OR work_order LIKE "%":work_order"%" OR num_invoice LIKE "%":num_invoice"%" ORDER BY id_load DESC');
  $reponse->execute(array(
   'nom_compagnie'=>$nom_compagnie,
   'work_order'=>$work_order,
   'num_invoice'=>$num_invoice,
   'load_number'=>$load_number)); 



    while($donnees=$reponse->fetch()){
     $data[]=$donnees;
	
		
		}
		echo json_encode($data);
		?>