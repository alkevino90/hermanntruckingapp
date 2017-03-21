<html>
<head>
<title>List of remark</title>
<style>

body{
background-color:rgb(192,192,192);

}
.message{
margin:6px;
padding:12px;
background-color:white;
word-wrap:break-word;
}


.do{
font-size:12px;
color:red;
}

.do2{
font-size:12px;
color:rgb(25,25,25);

font-weight:bold;
}
</style>
</head>

<body>
<?php


$id_compagnie=$_GET['id_compagnie'];
	
	
		
		try
{
    $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 
$reponse = $bdd->prepare('SELECT * FROM observation WHERE id_compagnie=:id_compagnie ORDER BY id_observation DESC');
      $reponse->execute(array(
   'id_compagnie'=>$id_compagnie)); 
  
  

  


    while($donnees=$reponse->fetch()){
    
	
	
?>	

<div class='message'>

<span class='remarque' style="color:black"><?php echo $donnees['remarque'];?></span><br>

<span class="do" style="color:red"><?php echo $donnees['date_observation']; ?></span>

<span class="do2" style="color:gray">Add by:<?php echo $donnees['usermembre']; ?></span>
</div>

<?php
		}
		
		?>
	</body>	
		
	</html>	