<?php
session_start();

define('ROOT', dirname(__DIR__));
define('DS', DIRECTORY_SEPARATOR);
define('VIEW', ROOT.DS."src".DS."pages".DS);


echo "<pre>";
var_dump("ROOT = ".ROOT);
var_dump("DS = ".DS);
echo "</pre>";

//require "data.php"; //lien vers la page de donnée (data.php)
require "../src/fonctions.php";

if(!isset($_GET['page'])){
    $page = "catalogue";
}else{
    $page = $_GET['page'];
}
//utilisation de la page à afficher
ob_start();
if($page == "catalogue"){
    require VIEW."e-shop/catalogue.php";
}elseif($page === "article"){
    require VIEW."e-shop/article.php";
}elseif($page === "panier"){
    require VIEW."e-shop/panier.php";
}elseif($page === "add"){
    require VIEW."e-shop/add.php";
}elseif($page === "delete"){
    require VIEW."e-shop/delete.php";
}elseif($page === "account"){
    require "../src/pages/users/account.php";
}elseif($page === "admin" || $page === "admin.add"){
    require "../src/pages/admin/admin.php";
}
$content = ob_get_clean();
require "../src/pages/template/default.php";
