<?php
require "fonctions.php";
require "data.php";
echo "<h1>Panier</h1>";
if(isset($_POST)){
    $data = $_POST;
    echo "<form name='catalogue[]' method='post' action='?page=panier'>";
    if(isset($_POST)){
        foreach($data as $key => $value){
            //print_r('$key = '.$key.' et $value = '.$value);
            if($key != 'calc' && $value != 'Supprimer' && $key != 'commande'){
                if($value != 'on' && $value != 'Commander' && $value != 'Supprimer'){
                    afficherPanier($key, $value);
                }elseif($value === 'on'){
                    afficherPanier($key);
                }
            }
        }
    }
        echo "<p class='text-right'> Votre panier d'une valeur de : ".totalPanier($data)." €. </p>";
        echo "<p class='text-right'><input type='submit' class='btn btn-warning valider' name='calc' value='recalculer'></p>";
        echo "<p class='text-right'><input type='submit' class='btn btn-success' name='valide' value='Valider le panier' class='valider'></p>";
        echo "</form>";
}