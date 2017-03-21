 <?php
/*error_reporting(0);*/
 $nom_compagnie="al";
 $id_compagnie=$_GET['id_compagnie'];
 $mc_number=2345;
 $remarque=$_GET['remarque'];
 $usermembre=$_GET['usermembre'];

  
	 try
{
     $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}


  $req = $bdd->prepare('INSERT INTO observation (id_compagnie,mc_number,nom_compagnie,remarque,date_observation,usermembre)  VALUES(:id_compagnie,:mc_number,:nom_compagnie,:remarque,NOW(),:usermembre)');
$req->execute(array(
     'id_compagnie'=>$id_compagnie,
	 'mc_number'=>$mc_number,
     'nom_compagnie'=>$nom_compagnie,
	 'remarque'=>$remarque,
	 'usermembre'=>$usermembre
		));
		
		
	echo 1; /* succes */

	
	?>