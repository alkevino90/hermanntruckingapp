 <?php
/*error_reporting(0);*/
 $usermembre=$_GET['usermembre'];
 $id_driver=$_GET['id_driver'];
 $remarque_driver=$_GET['remarque_driver'];


  
	 try
{
     $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}


  $req = $bdd->prepare('INSERT INTO observation_driver (id_driver,remarque_driver,usermembre,date_observation_driver)  VALUES(:id_driver,:remarque_driver,:usermembre,NOW())');
$req->execute(array(
     'id_driver'=>$id_driver,
	 'remarque_driver'=>$remarque_driver,
	 'usermembre'=>$usermembre
		));
		
		
	echo 1; /* succes */

	
	?>