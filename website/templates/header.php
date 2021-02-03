<?php

// Si la page est appelée directement par son adresse, on redirige en passant pas la page index
if (basename($_SERVER["PHP_SELF"]) != "index.php")
{
	header("Location:../index.php");
	die("");
}

// Pose qq soucis avec certains serveurs...
echo "<?xml version=\"1.0\" encoding=\"utf-8\" ?>";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- **** H E A D **** -->

<!-- **** H E A D 

	**** -->
<head>	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="icon" type="image/png" sizes="16x16" href="src/img/logo2.png">
	<title>IronFork</title>
	
	<!-- Liaisons aux fichiers css de Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />

	<link rel="stylesheet" type="text/css" href="css/style.css">

	<!-- script -->

	<script src="js/bootstrap.min.js"></script>
  <script src="js/script.js"></script>
</head>

<!-- **** F I N **** H E A D **** -->


<!-- **** B O D Y **** -->
<body>



<nav class="navbar navbar-expand-lg navbar-light background shadow sticky-top">
  <div class="container-fluid">
	<nav class="navbar navbar-light background">
	  <div class="container">
	    <a class="navbar-brand" href="index.php?view=accueil">
	      <img id="logo" src="src/img/logo1.png" alt="" width="30" height="24">
	    </a>
	  </div>
	</nav>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php?view=accueil">Accueil</a>
        </li>


        <li class="nav-item">
          <a class="nav-link" target="_blank" href="https://www.linkedin.com/company/ironfork/">LinkedIn</a>
        </li>
        <!--
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Liens
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" target="_blank" href="https://www.linkedin.com/company/ironfork/">Linkedin</a></li>
            <li><a class="dropdown-item" target="_blank" href="https://github.com/IronFork/ironForkProject">GitHub</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>

        
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      -->
      </ul>
      <!--
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Rechercher" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Rechercher</button>
      </form>
    -->
    <a class="btn btn-outline-primary d-flex m-1" href="src/notice.pdf" target="_blank" role="button">Télécharger la notice</a>
    <a class="btn btn-primary d-flex m-1" href="https://github.com/IronFork/ironForkProject" target ="_blank" role="button">Code source du projet sur GitHub</a>
    </div>
  </div>
</nav>

















