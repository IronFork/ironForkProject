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
		<h1 class="mb-3">Le déroulé du projet</h1>
		<p class="col-7">
			Démarré en 2019 par 12 étudiants de l'école Centrale de Lille dans le cadre de leurs deux premières années en école d'ingénieurs, le projet IronFork avait initialement pour but, en partant de zéro, de livrer à l'IEM Christian Dabbadie un prototype fonctionnel de robot aidant les personnes en situation de handicap à la nutrition. L'IEM Christian Dabbadie est localisé à Villeneuve d'Ascq et géré par l'Association des Paralysés de France, mouvement pour le soutien, la défense et l'insertion des personnes atteintes de déficiences motrices. 
		</p>
		<div class="col-5">
			<img src="src/img/iem.png" class="img-fluid" alt="...">
		</div>

	</div>

	<div class="row">		
		<div class="col-5">
			<img src="src/img/schema.jpg" class="img-fluid img-thumbnail shadow" alt="...">
		</div>
		<p class="col-7">
			L'équipe projet s'est alors lancé dans ce défi ambitieux. Dans un premier temps, le démarage fut plutôt lent, mais suite à la crise du covid, l'équipe a su tirer profit du premier confinement pour rebondir et grâce à un travail efficace en distanciel, un cahier des charge a pu être élaboré, et plusieurs éléments concluants comme le schéma cinématique du robot ont vu le jour.
		</p>


	</div>

	<div class="row mt-3">		

		<p class="col-7">
			En début d'année civile, la CAO du robot était enfin réalisée, mais malheureusement, un second confinement impliquant la fermeture de l'école a retardé l'impression de toutes les pièces du robot. Nous avons donc profité de cette nouvelle période de travail en distantiel pour perfectionner au mieux le prototype de manière à le rendre fonctionnel dès la première impression. Le travail côté mécanique consistait à s'assurer que toutes les pièces étaient facilement imprimables en 3D, et que l'assemblage était physiquement possible avec le bon fonctionnement des liaisons, tandis que le travail côté programmation consistait à élaborer un programme pour donner une belle trajectoire au robot. 
		</p>		
		<div class="col-5">
			<img src="src/img/robot3D2.png" class="img-fluid img-thumbnail shadow" alt="...">
		</div>

	</div>


	<div class="row mt-3">		
		<div class="col-5">
			<img src="src/img/robot1.jpg" class="img-fluid img-thumbnail shadow" alt="...">
		</div>
		<p class="col-7">
			En Janvier 2021, après plus d'un an de travail, et après avoir imprimé toutes les pièces et reçu les commandes de composants, Le robot a enfin pu être assemblé, et a pu effectuer ses premières trajectoires. Grâce au travail assidu de perfectionnement du prototype pendant le deuxième confinement, la majeure partie des pièces n'ont nécessité qu'une seule impression, et tous les morceaux du projet se sont mis bout-à-bout comme prévu. Malgré le temps restreint à l'approche de l'échéence de la fin du projet, un prototype fonctionnel a pu être livré au client, et est maintenant en attente d'un test en situation réelle.  
		</p>


	</div>



</div>







