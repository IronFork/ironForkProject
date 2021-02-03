<?php

// Si la page est appelée directement par son adresse, on redirige en passant pas la page index
// Pas de soucis de bufferisation, puisque c'est dans le cas où on appelle directement la page sans son contexte
if (basename($_SERVER["PHP_SELF"]) != "index.php")
{
	header("Location:../index.php?view=accueil");
	die("");
}

?>


<div class="container-fluid blue">

	<div class="row">



	<div class="col-8 vignet1">
		<h1 class="mb-3">Projet IronFork</h1>

		<p class="lead mb-4">
		Découvrez IronFork, un bras robotique opensource conçu pour aider les personnes en situation de handicap à manger. Le projet est mené par 12 étudiants de l'école Centrale de Lille, en partenariat avec l'IEM Christian Dabbadie. 
		</p>
	</div>

	<div class="col-4 vignet2">
		<img src="src/img/logo2.png" class="card-img-top" alt="...">		
	</div>

	</div>

</div>



<div id="carouselExampleCaptions" class="carousel carousel-dark slide shadow-lg vignet3" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="src/img/reunion.jpeg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class= "contour">Un projet développé par 12 étudiants</h5>
        <p class="contour">Pendant 1 an, 12 étudiants de Centrale Lille ont réuni leur compétences pour réaliser un prototype fonctionnel pour l'IEM Christian Dabbadie.</p>
      </div>
    </div>

    <div class="carousel-item">
      <img src="src/img/robot3D1.png" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5 class="contour">Un projet opensource</h5>
        <p class="contour">Tous les fichiers et le code source du projet sont disponibles sur GitHub.</p>
      </div>
    </div>


   
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>


<div class="container-fluid blue">

	<div class="row">

	<div class="card m-2 p-3 mx-auto shadow" style="width: 18rem;">
	  <img src="src/img/imprimante.png" class="card-img-top" alt="...">
	  <div class="card-body d-flex flex-column">
	    <h5 class="card-title">Le déroulé du projet</h5>
	    <p class="card-text">Découvrez les différents enjeux du projet, ainsi que notre démarche pour concevoir le premier prototype.</p>
	    <a href="index.php?view=projet" class="btn btn-primary mt-auto">Découvrir</a>
	  </div>
	</div>

	<div class="card m-2 p-3 mx-auto shadow" style="width: 18rem;">
	  <img src="src/img/robot3D2.png" class="card-img-top" alt="...">
	  <div class="card-body d-flex flex-column">
	    <h5 class="card-title">Le robot détaillé</h5>
	    <p class="card-text">Rentrez dans les moindres détails d'IronFork et découvrez les subtilités de son architecture.
	    </p>
	    <a href="index.php?view=details" class="btn btn-primary mt-auto">Voir les détails</a>
	  </div>
	</div>

	<div class="card m-2 p-3 mx-auto shadow" style="width: 18rem;">
	  <img src="src/img/construction.png" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">Construisez le robot chez vous</h5>
	    <p class="card-text">Tous nos fichiers ainsi qu'une notice de construction sont disponibles gratuitement sur GitHub. La plupart des pièces sont imprimables en 3D ! </p>
	    <a href="https://github.com/IronFork/ironForkProject" target="_blank" class="btn btn-primary">GitHub IronFork</a>
	    <a class="btn btn-outline-primary" href="src/notice.pdf"  target="_blank" role="button">Notice</a>
	  </div>
	</div>



	<div class="card m-2 p-3 mx-auto shadow" style="width: 18rem;">
	  <img src="src/img/robot2.jpg" class="card-img-top" alt="...">
	  <div class="card-body d-flex flex-column">
	    <h5 class="card-title">Tests vidéo</h5>
	    <p class="card-text">Quelques vidéos de démonstration du robot</p>
	    <a href="index.php?view=tests" class="btn btn-primary mt-auto">Voir les tests</a>
	  </div>
	</div>


	<div class="card m-2 p-3 mx-auto shadow" style="width: 18rem;">
	  <img src="src/img/logo2.png" class="card-img-top" alt="...">
	  <div class="card-body d-flex flex-column">
	    <h5 class="card-title">L'équipe projet</h5>
	    <p class="card-text">Présentation de l'organisation et des membres de l'équipe IronFork</p>
	    <a href="index.php?view=equipe" class="btn btn-primary mt-auto">Voir l'équipe</a>
	  </div>
	</div>




	<div class="card m-2 p-3 mx-auto shadow" style="width: 18rem;">
	  <img src="src/img/robot1.jpg" class="card-img-top" alt="...">
	  <div class="card-body d-flex flex-column">
	    <h5 class="card-title">Montrez-nous votre IronFork !</h5>
	    <p class="card-text">Vous avez construit notre robot, vous vous posez des questions, ou vous appreciez simplement le projet ? Contactez-nous, l'équipe se fera un plaisir de vous répondre</p>
	    <a href="index.php?view=envoi" class="btn btn-primary mt-auto">Nous contacter</a>
	  </div>
	</div>

	</div>


</div>


