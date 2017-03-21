 <?php
/*error_reporting(0);*/
 $nom_driver=$_GET['nom_driver'];
 $phone_driver=$_GET['phone_driver'];
 $passport_number=$_GET['passport_number'];
 $sexe=$_GET['sexe'];
 $truck_number=$_GET['truck_number'];
 $driver_license=$_GET['driver_license'];
	 try
{
   $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}


  $req = $bdd->prepare('INSERT INTO driver (nom_driver,phone_driver,passport_number,sexe,truck_number,driver_license)  VALUES(:nom_driver,:phone_driver,:passport_number,:sexe,:truck_number,:driver_license)');
$req->execute(array(
     'nom_driver'=>$nom_driver,
	 'phone_driver'=>$phone_driver,
	 'passport_number'=>$passport_number,
	 'sexe'=>$sexe,
	 'truck_number'=>$truck_number,
	 'driver_license'=>$driver_license
		));
		
		
	echo 1; /* succes */

	
	?>