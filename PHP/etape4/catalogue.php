<?php
require "fonctions.php";
require "data.php";
echo "<h1>Catalogue</h1>";
echo "<form name='catalogue[]' method='post' action='?page=panier' class='row'>";
foreach($keys as $key){
echo afficheArticle($key);    
}
echo "<input type='submit' name='commande' value='Commander' class='valider'>";
echo "</form>";