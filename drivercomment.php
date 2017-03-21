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


$id_driver=$_GET['id_driver'];
	
	
		
		try
{
   $bdd = new PDO('mysql:host=localhost;dbname=hermannt40_trucking', 'hermannt40', 'kevin1990');
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
 
$reponse = $bdd->prepare('SELECT * FROM observation_driver WHERE id_driver=:id_driver ORDER BY id_observation_driver DESC');
      $reponse->execute(array(
   'id_driver'=>$id_driver)); 
  
  

  


    while($donnees=$reponse->fetch()){
    
	
	
?>	

<div class='message'>

<span class='remarque' style="color:black"><?php echo $donnees['remarque_driver'];?></span><br>

<span class="do" style="color:red"><?php echo $donnees['date_observation_driver']; ?></span>

<span class="do2" style="color:gray">Add by:<?php echo $donnees['usermembre']; ?></span>
</div>

<?php
		}
		
		?>
	</body>	
		
	</html>	