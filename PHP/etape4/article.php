<?php
require "data.php";
if(isset($_GET['id'])){
    $id = $_GET['id'];
    $html = "<div class='card p-0 m-1'  style='width: 18rem;'>";
    $html .= "<img class='card-img-top float-sm-left' src='$image[$id]' alt='$name[$id]'>";
    $html .= "<div class='card-body'>";
    $html .= "<h5 class='card-title'>$name[$id]</h5>";
    $html .= "<p class='text-right'>$prix[$id] €</p>";
    $html .= "</div>";
    $html .= "</div>";
    
    echo $html; //affichage du code générer
}else{
    echo "veuillez selectionner un article à afficher, vous en trouverez sur la page Catalogue";
}