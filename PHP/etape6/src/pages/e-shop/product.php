<?php
require "data.php";
if(isset($_GET['id'])){
    $id = $_GET['id'];

    echo "<h1>".ucfirst($name[$id])."</h1>";
    echo afficheArticle($id);
}else{
    echo "veuillez selectionner un article à afficher, vous en trouverez sur la page Catalogue";
}