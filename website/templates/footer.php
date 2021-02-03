<?php

// Si la page est appelée directement par son adresse, on redirige en passant pas la page index
if (basename($_SERVER["PHP_SELF"]) != "index.php")
{
	header("Location:../index.php");
	die("");
}

?>

<div id="footer" class="container-fluid text-center col-8">


	<img src="src/img/banniere.png" class="card-img-top m-3" alt="...">


</div>


	
</body>
</html>
