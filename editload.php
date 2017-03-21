<?php
/*error_reporting(0);*/
 $nom_compagnie=$_GET['nom_compagnie'];
 $truck_number=$_GET['truck_number'];
 $pua=$_GET['pua'];
 $doa=$_GET['doa'];
 $puc=$_GET['puc'];
 $doc=$_GET['doc'];
 $amount=$_GET['amount'];
 $statut_load=$_GET['statut_load'];
 $remark_load=$_GET['remark_load'];
 $work_order=$_GET['work_order'];
 $load_number=$_GET['load_number'];
 $date_load=$_GET['date_load'];
 $id_load=$_GET['id_load']; 
 $num_invoice=$_GET['num_invoice'];
	 try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}


  $req = $bdd->prepare('UPDATE chargement set nom_compagnie=:nom_compagnie,pua=:pua,doa=:doa,amount=:amount,puc=:puc,doc=:doc,statut_load=:statut_load,date_load=:date_load,truck_number=:truck_number,remark_load=:remark_load,work_order=:work_order,num_invoice=:num_invoice,load_number=:load_number WHERE id_load=:id_load ');
$req->execute(array(
     'id_load'=>$id_load,
     'nom_compagnie'=>$nom_compagnie,
	 'pua'=>$pua,
	 'doa'=>$doa,
	 'amount'=>$amount,
	 'puc'=>$puc,
	 'doc'=>$doc,
	 'statut_load'=>$statut_load,
	 'date_load'=>$date_load,
	 'truck_number'=>$truck_number,
	 'remark_load'=>$remark_load,
	 'work_order'=>$work_order,
	 'num_invoice'=>$num_invoice,
	 'load_number'=>$load_number
		));
		
		
	echo 1; /* succes */

	
	?>