 <?php
/*error_reporting(0);*/
 $nom_compagnie=$_GET['nom_compagnie'];
 $mc_number=$_GET['mc_number'];
 $adresse=$_GET['adresse'];
 $tel1=$_GET['tel1'];
 $tel2=$_GET['tel2'];
 $company_city=$_GET['company_city'];
 $fax=$_GET['fax'];

    
	 try
{
     $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}



  $req = $bdd->prepare('SELECT * FROM company WHERE  mc_number=:mc_number');
$req->execute(array(
     'mc_number'=> $mc_number

	));
	
	$donnees=$req->fetch();
	
	if(!empty($donnees['mc_number'])){
	
	echo 0;  /* echec   */
	}
	

	else{
  $req = $bdd->prepare('INSERT INTO company (nom_compagnie,mc_number,adresse,date_enregistrement,company_city,fax,tel1,tel2)  VALUES(:nom_compagnie,:mc_number,:adresse,NOW(),:company_city,:fax,:tel1,:tel2)');
$req->execute(array(
     'nom_compagnie'=> $nom_compagnie,
	 'mc_number'=>$mc_number,
     'adresse'=> $adresse,
	 'company_city'=>$company_city,
	 'fax'=>$fax,
	 'tel1'=>$tel1,
	 'tel2'=>$tel2
	));
	echo 1; /* succes */
	}
	?>