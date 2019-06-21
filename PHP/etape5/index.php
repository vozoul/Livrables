<?php
session_start();
require "data.php"; //lien vers la page de donnée (data.php)
require "fonctions.php";

if(!isset($_GET['page'])){
    $page = "catalogue";
}else{
    $page = $_GET['page'];
}
//utilisation de la page à afficher
ob_start();
if($page == "catalogue"){
    require "catalogue.php";
}elseif($page === "article"){
    require "article.php";
}elseif($page === "panier"){
    require "panier.php";
}elseif($page === "add"){
    require "add.php";
}elseif($page === "delete"){
    require "delete.php";
}elseif($page === "account"){
    require "account.php";
}
$content = ob_get_clean();
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <title>FGZ-Boutique</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.php">Frin'GantZ</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item <?= ($page === 'catalogue') ? 'active' : ''; ?>">
                        <a class="nav-link" href="?page=catalogue"><i class="fas fa-book-open"></i> Catalogue</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item <?= ($page === 'account') ? 'active' :''; ?>">
                        <a class='nav-link' href="?page=account"><i class="fas fa-user"></i> Mon Compte</a>
                    </li>
                    <li class="nav-item <?= ($page === 'panier')? 'active' :''; ?>">
                        <a class='nav-link' href="?page=panier">Panier <i class="fas fa-shopping-basket"></i> <?= isset($_SESSION['panier']) ? "<span class='badge badge-warning'>".$_SESSION['panier']['count']."</span>" :"<span class='badge badge-warning'>0</span>"; ?></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="container">
        <?= $content; ?>
    </main>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>