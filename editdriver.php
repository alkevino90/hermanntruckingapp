<?php

		
	$id_driver=$_GET['id_driver'];
	$nom_driver=$_GET['nom_driver'];
	$sexe=$_GET['sexe'];
	$passport_number=$_GET['passport_number'];
	$phone_driver=$_GET['phone_driver'];
	$truck_number=$_GET['truck_number']	;
	$driver_license=$_GET['driver_license'];
		try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

  $reponse = $bdd->prepare('UPDATE driver set nom_driver=:nom_driver,sexe=:sexe,passport_number=:passport_number,phone_driver=:phone_driver, truck_number=:truck_number,driver_license=:driver_license WHERE id_driver=:id_driver');
$reponse->execute(array(
     'id_driver'=> $id_driver,
	 'nom_driver'=>$nom_driver,
	 'phone_driver'=>$phone_driver,
	 'passport_number'=>$passport_number,
	 'sexe'=>$sexe,
	 'truck_number'=>$truck_number,
	 'driver_license'=>$driver_license

	));
  
  

  


	
		?>