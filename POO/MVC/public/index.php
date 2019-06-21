<?php
use App\Autoloader;

//Debut Autoloading
require "../src/Autoloader.php";
Autoloader::register();
//Fin Autoloading

//choix de la page (etape tempon avant interfacage)
isset($_GET['page']) ? $page = $_GET['page'] : $page = 'Home';

// Mise en mémoire de la page a chager
ob_start();

//conditions pour atteindre les page
if($page === 'Home'){
    require "../Views/demos/Home.php";
}elseif($page === 'Formulaire'){
    require "../Views/demos/Formulaire.php";
}elseif($page === 'Catalog'){
    require "../Views/demos/Catalog.php";
}

// récupération de la page en mémoire dans la variable $content
$content = ob_get_clean();

// affichage du template pour integrer la page memorisé
require "../Views/Templates/default.php";