<?php

		
	$id_company=$_GET['id_company'];
	$nom_compagnie=$_GET['nom_compagnie'];
	$adresse=$_GET['adresse'];
	$company_city=$_GET['company_city'];
	$fax=$_GET['fax'];
	$tel1=$_GET['tel1']	;
	$tel2=$_GET['tel2'];
		try
{
 $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

  $reponse = $bdd->prepare('UPDATE company set nom_compagnie=:nom_compagnie,adresse=:adresse,company_city=:company_city,fax=:fax, tel1=:tel1,tel2=:tel2 WHERE id_company=:id_company');
$reponse->execute(array(
     'id_company'=>$id_company,
     'nom_compagnie'=> $nom_compagnie,
	 'adresse'=>$adresse,
	 'company_city'=>$company_city,
	 'fax'=>$fax,
	 'tel1'=>$tel1,
	 'tel2'=>$tel2	));
  
  

  


	
		?>