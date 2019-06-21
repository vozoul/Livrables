<?php
require "perso.php";
require "archer.php";
require "rooting.php";

echo Rooting::ROOT;
// $joueur1 = new Perso('Hervé');
$joueur2 = new Archer('John Doe');
var_dump($joueur2);
echo "<pre>";

// echo "Le premier Joueur = ".$joueur1->getName()." avec " . $joueur1->vie . " PDV. \n";
// echo $joueur1->getName()." est inscrit à : ".$joueur1->dateIsncription."\n";
echo "Le second Joueur = ".$joueur2->getName()." avec " . $joueur2->vie . " PDV. \n";

echo "\n\n";

$joueur2->enCharge();
// $joueur2->attaque($joueur1);
echo "\n\n";
// $joueur1->enCharge();
// $joueur1->attaque($joueur2);
// $joueur1->enCharge();
// $joueur1->attaque($joueur2);

echo "\n\n";

// echo $joueur1->getName()." à " . $joueur1->vie . " PDV. \n";
echo $joueur2->getName()." à " . $joueur2->vie . " PDV. \n";
echo "</pre>";