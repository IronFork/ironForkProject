<?php

// Si la page est appelée directement par son adresse, on redirige en passant pas la page index
// Pas de soucis de bufferisation, puisque c'est dans le cas où on appelle directement la page sans son contexte
if (basename($_SERVER["PHP_SELF"]) != "index.php")
{
	header("Location:../index.php?view=accueil");
	die("");
}

?>

<div class="container-fluid">

	<h1 class="m-3">Les détails du robot</h1>
	<div class="row m-3"> 	
		
		<div class="col-5">
			
			<img src="src/img/robot3.jpg" class="img-fluid img-thumbnail shadow" alt="...">
		</div>

		<div class="col-7">
			<h3>Point de vue global</h3>
			<p>
			Le robot est composé de 5 éléments distincts : le bâti (ou socle), la tourelle, le bras, l'avant-bras, et la pince. Ces 5 éléments sont reliés entre eux par 4 liaisons motorisées par des servomoteurs dynamixel. Cette architecture permet à la cuillère en bout de pince d'atteindre un maximum de zones de l'espace en restant en position horizontale. Nous avons choisi des servomoteurs dynamixel pour plusieurs raisons : tout d'abord, ils permettent un contrôle et une précision que nous souhaitons maximiser. Ensuite, ils sont munis de codeurs qui permettent un retour de position en temps réel, ce qui facilite l'asservissement. Enfin, leur couple est suffisant pour actionner toutes les liaisons, bien que pour la liaison tourelle, la dynamique nous a contraint de placer deux moteurs pour contrer le couple du bras. 
			</p>
		</div>
	</div>

	<div class="row m-3"> 	
		


		<div class="col-7">
			<h3>Le socle</h3>
			<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			 consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			 cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			 proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

			 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			 consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			 cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			 proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
			</p>
		</div>

		<div class="col-5">
			
			<div id="carouselSocle" class="carousel slide img-thumbnail shadow" data-bs-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="src/img/socle1.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="src/img/socle2.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="src/img/socle3.jpg" class="d-block w-100" alt="...">
			    </div>			    
			  </div>
			  <a class="carousel-control-prev" href="#carouselSocle" role="button" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselSocle" role="button" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </a>
			</div>			
		</div>





	</div>

	<div class="row m-3"> 	


		<div class="col-5">
			
			<div id="carouselTourelle" class="carousel slide img-thumbnail shadow" data-bs-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="src/img/tourelle1.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="src/img/tourelle2.jpg" class="d-block w-100" alt="...">
			    </div>		    
			  </div>
			  <a class="carousel-control-prev" href="#carouselTourelle" role="button" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselTourelle" role="button" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </a>
			</div>		
		</div>
		<div class="col-7">
			<h3>La tourelle</h3>
			<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</p>
		</div>

	</div>

	<div class="row m-3"> 	
		
		<div class="col-7">
			<h3>Le bras et l'avant-bras</h3>
			<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</p>
		</div>

		<div class="col-5">
			
			<img src="src/img/coude.jpg" class="img-fluid img-thumbnail shadow" alt="...">
		</div>
	</div>

	<div class="row m-3"> 	
		<div class="col-5">
			
			<img src="src/img/pince.jpg" class="img-fluid img-thumbnail shadow" alt="...">
		</div>		
		<div class="col-7">
			<h3>La pince</h3>
			<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			 consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			 cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			 proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
			</p>
		</div>


	</div>




</div>