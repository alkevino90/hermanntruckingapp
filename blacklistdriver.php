 <?php
/*error_reporting(0);*/
 
 
 $id_driver=$_GET['id_driver'];

 $statut_driver="blacklisted";
  
	 try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

 $req = $bdd->prepare('UPDATE driver SET statut_driver=:statut_driver WHERE id_driver=:id_driver');
  $req->execute(array(
   'statut_driver'=>$statut_driver,
   'id_driver'=>$id_driver)); 
   
 
		
	echo 1; /* succes */

	
	?>