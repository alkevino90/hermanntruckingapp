<?php  
    $id_load=$_GET['id_load'];
    $nom_fichier=$_GET['nom_fichier'];
	$chemin_fichier=$_FILE['chemin_fichier'];

	// Testons si le fichier a bien été envoyé et s'il n'y a pas d'erreur
if (isset($_FILES['chemin_fichier']) AND $_FILES['chemin_fichier']['error'] == 0)
{
        // Testons si le fichier n'est pas trop gros
        if ($_FILES['chemin_fichier']['size'] <= 7000000)
        {
                // Testons si l'extension est autorisée
                $infosfichier = pathinfo($_FILES['chemin_fichier']['name']);
                $extension_upload = $infosfichier['extension'];
             
                        // On peut valider le fichier et le stocker définitivement
                        move_uploaded_file($_FILES['chemin_fichier']['tmp_name'], 'bol/' . basename($_FILES['chemin_fichier']['name']));
                        echo "L'envoi a bien été effectué !";
                }
        }
    ?>
	
	
	<?php 
    $id_load=$_GET['id_load'];
    $nom_fichier=$_GET['nom_fichier'];
	$chemin_fichier=$_FILES['chemin_fichier']['name'];
 
    
	 try
{
     $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
  $req = $bdd->prepare('INSERT INTO dossier(id_load,nom_fichier,chemin_fichier) VALUES(:id_load,:nom_fichier,:chemin_fichier)');
  $req->execute(array(
   'id_load'=>$id_load,
   'nom_fichier'=>$nom_fichier,
   'chemin_fichier'=>$chemin_fichier)); 
   
   
	

  ?>	