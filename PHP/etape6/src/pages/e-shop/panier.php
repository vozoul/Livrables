<?php
require ROOT.DS."src/data.php";

echo "<h1 class='py-3'><i class='fas fa-shopping-basket'></i> Panier</h1>";
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
echo "<p class='text-right'><a href='?page=catalogue' class='btn btn-warning'><i class='fas fa-book-open'></i> Retour au catalogue</a></p>";
echo "<form name='catalogue[]' method='post' action='?page=panier'>";
foreach($data as $key => $value){
    if($key === 'vider'){
        unset($_SESSION['panier']);
        $_SESSION['panier']['count'] = 0;
        $_SESSION['message']['flash'] = "Le <i class='fas fa-shopping-basket'></i> est vide !";
        header('location: ?page=catalogue');
    }elseif($key != 'calc' && $key != 'commande' && $key != 'count' && $key != 'shipMsg' && $key != 'valide'){
        if($value === 'on'){
            $_SESSION['panier'][$key] = 1;
            $compteur++;
            $dat = serialize($_SESSION['panier']);
            setcookie('FGZ', $dat, time()+365*24*3600);
            afficherPanier($key);
        }elseif($value === 'Supprimer'){
            unset($_SESSION['panier'][$key]);
            $dat = serialize($_SESSION['panier']);
            setcookie('FGZ', $dat, time()+365*24*3600);

        }else{
            $_SESSION['panier'][$key] = $value;
            echo afficherPanier($key, $value);
            $dat = serialize($_SESSION['panier']);
            setcookie('FGZ', $dat, time()+365*24*3600);
        }
    }
}
echo "<p class='text-right'> Votre panier d'une valeur de : ".totalPanier($data)." €. </p>";
shipping($data);
echo "<p class='text-right'>". $_SESSION['panier']['shipMsg'] ."</p>";
if(totalPanier($data) === 0){
    foreach($_SESSION['panier'] as $key => $value){
        if($key != 'count' && key != 'valide'){
            unset($_SESSION['panier'][$key]);
        }
    }
    $_SESSION['message']['flash'] = "Le <i class='fas fa-shopping-basket'></i> est vide !";
    header('location: ?page=catalogue');
}else{
    echo "<p class='text-right'> Total de votre commande : ".(totalPanier($data)+shipping($data))." €. </p>";
    echo "<p class='text-right'><button type='submit' class='btn btn-warning valider' name='calc' value='recalculer'><i class='fas fa-cogs'></i> recalculer</button></p>";
    echo "
        <p class='text-right'>
            <button type='submit' class='btn btn-danger mx-3' name='vider' value='Vider le panier'><i class='far fa-trash-alt'></i> Vider le panier</button>
            <button type='submit' class='btn btn-success valider' name='valide' value='Valider le panier'><i class='fas fa-check'></i> Valider</button></i>
        </p>";
    echo "</form>";
}
if(isset($_SESSION['panier'])){
    $dat = serialize($_SESSION['panier']);
    setcookie('FGZ', $dat, time()+365*24*3600);
}