<?php
require "data.php";
echo "<h1 class='py-3'><i class='fas fa-book-open'></i> Catalogue</h1>";
if(isset($_COOKIE['FGZ'])){
    $_SESSION['panier'] = unserialize($_COOKIE['FGZ']);
}
if(isset($_POST) && !empty($_POST)){
    $_SESSION['panier'] = $_POST;
    $data = $_SESSION['panier'];
}elseif(isset($_SESSION['panier'])){
    $data = $_SESSION['panier'];
}
if(!isset($_SESSION['panier']['count'])){
    $_SESSION['panier']['count'] = 0;
    $compteur = $_SESSION['panier']['count'];
}else{
    $compteur = $_SESSION['panier']['count'];
}
if(isset($_SESSION['message']['flash'])){
    echo "<p class='alert-danger mt-3 p-3'>".$_SESSION['message']['flash']."</p>";
    unset($_SESSION['message']['flash']);
}
echo "<div class='row'>";
foreach($keys as $key){
    echo afficheArticle($key);    
}
echo "</div>";
if(isset($_SESSION['panier'])){
    $dat = serialize($_SESSION['panier']);
    setcookie('FGZ', $dat, time()+365*24*3600);
}
