<?php
if($_GET['id']){
    $key = $_GET['id'];
    if($_SESSION['panier'][$key]){
        $_SESSION['panier'][$key]++;
    }else{
        $_SESSION['panier'][$key] = 1;
    }
    $_SESSION['panier']['count']++;
    
    if(isset($_SESSION['panier'])){
        $dat = serialize($_SESSION['panier']);
    }
    setcookie('FGZ', $dat, time()+365*24*3600);
    header('location: '.$_SERVER["HTTP_REFERER"]);
}