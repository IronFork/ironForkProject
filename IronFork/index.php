<?php
session_start();

	include_once "libs/maLibUtils.php";
	$view = valider("view"); 


	if (!$view) $view = "accueil"; 


// On affiche le header dans tous les cas
	include("templates/header.php");


	// En fonction de la vue à afficher, on appelle tel ou tel template
	switch($view)
	{		

		case "accueil" : 
			include("templates/accueil.php");
		break;


		default : // si le template correspondant à l'argument existe, on l'affiche
			if (file_exists("templates/$view.php"))
				include("templates/$view.php");

	}

	// Dans tous les cas, on affiche le pied de page
	// Qui contient les coordonnées de la personne si elle est connectée
	include("templates/footer.php");


	
?>








