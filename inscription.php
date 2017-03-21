 <?php
/*error_reporting(0);*/
 $passe=$_GET['passe'];
 $first_name=$_GET['first_name'];
 $last_name=$_GET['last_name'];
 $login=$_GET['login'];
 $profil="user";
    
	 try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}



  $req = $bdd->prepare('SELECT * FROM membre WHERE  login=:login');
$req->execute(array(
     'login'=> $login

	));
	
	$donnees=$req->fetch();
	
	if(!empty($donnees['login'])){
	
	echo 0;  /* echec   */
	}
	

	else{
  $req = $bdd->prepare('INSERT INTO membre (login,passe,profil,first_name,last_name)  VALUES(:login,:passe,:profil,:first_name,:last_name)');
$req->execute(array(
      'login'=> $login,
	 'passe'=>$passe,
	 'profil'=>$profil,
     'first_name'=> $first_name,
	 'last_name'=>$last_name
	));
	echo 1; /* succes */
	}
	?>