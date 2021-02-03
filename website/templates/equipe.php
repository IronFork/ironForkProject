<?php

// Si la page est appelée directement par son adresse, on redirige en passant pas la page index
// Pas de soucis de bufferisation, puisque c'est dans le cas où on appelle directement la page sans son contexte
if (basename($_SERVER["PHP_SELF"]) != "index.php")
{
	header("Location:../index.php?view=accueil");
	die("");
}

?>

<h1 class="m-3">Présentation de l'équipe IronFork</h1>

<div class="container-fluid pb-3 pt-1 mb-5">
	<h3 class="m-3">Gestion de projet</h3>
	<div class="row">
		
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
	</div>
</div>


<div class="container-fluid pb-3 pt-1 mb-5">
	<h3 class="m-3">Pôle Mécanique</h3>
	<div class="row">
		
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>				
				
	</div>
</div>


<div class="container-fluid pb-3 pt-1 mb-5">
	<h3 class="m-3">Pôle Programmation</h3>
	<div class="row">
		
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>
		<div class="card col-3 mx-auto p-1 m-1" style="width: 12rem;">
		  <img src="..." class="card-img-top" alt="...">
		  <div class="card-body">
		    <p class="card-text">nom-prenom</p>
		  </div>
		</div>			
				
	</div>
</div>



