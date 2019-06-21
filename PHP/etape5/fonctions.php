<?php
function afficheArticle($key){
    require "data.php";
    if(isset($_GET['page'])){
    $page = $_GET['page'];
    }
    $html = "<div class='card w-25 my-2'>";
    $html .= "<img class='card-img-top' width='286' height='365' src='$image[$key]' alt='$name[$key]'>";
    $html .= "<div class='card-body'>";
    $html .= "<h5 class='card-title'>$name[$key]</h5>";
    $html .= "<p class='card-text text-right'>$prix[$key] €</p>";
    $html .= "<p class='card-text d-flex justify-content-around'>";
    if(!isset($page) || $page != 'article'){
        $html .= "<a href='?page=article&id=$key' class='btn btn-warning'>voir l'article</a>";
    }
    $html .= "<a href='?page=add&id=$key' name='$key' class='btn btn-success'>Ajouter</a>";
    $html .= "</p>";
    $html .= "</div>";
    $html .= "</div>";
    return $html;
}

function afficherPanier($key, $value = null){
    require "data.php";
    $html = "<div class='card my-2'>";
    $html .= "<h5 class='card-header'>$name[$key]</h5>";
    $html .= "<div class='card-body'>";
    $html .= "<p class='card-text'>";
    $html .= "<img class='card-img float-left' width='80' height='88' src='$image[$key]' alt='$name[$key]'>";
    $html .= "<p class='card-text text-right'>";
    $html .= "Qté: <input type='number' min='1' max='50' value='$value' name='$key'>";
    $html .= "<span class='badge badge-pill badge-warning lg p-3'>$prix[$key] €</span>";
    $html .= "</p>";
    $html .= "<span class='mt-3 float-right'><p class='text-right'><button type='submit' class='btn btn-danger' name='$key' value='Supprimer'><i class='fas fa-times'></i> Supprimer</button></span>";
    $html .= "</p>";
    $html .= "</div>";
    $html .= "</div>";
    return $html;
}

function totalPanier($data){
    require "data.php";
    $totalPanier = 0;
    foreach($data as $key => $value){
        if(is_numeric($value) && $key != 'commande' && $key != 'calc' && $key != 'count'){
            $totalPanier += $prix[$key]*$value;
        }else if($key != 'commande' && $key != 'calc' && $value != 'Supprimer' && $key != 'count'){
            $totalPanier += $prix[$key];
        }
    }
    $_SESSION['panier'] = $data;
    countPanier($data);
    return $totalPanier;
}

function countPanier($data){
    require "data.php";
    $countPanier = 0;
    foreach($data as $key => $value){
        if($key === 'vider'){
            unset($_SESSION['panier']);
            $countPanier = 0;
        }elseif($key != 'commande' && $key != 'calc' && $key != 'count'){
            if($value === 'on'){
                $countPanier += 1;
            }elseif($value === 'Supprimer'){
                unset($_SESSION['panier'][$key]);
            }else{
                $countPanier += $value;
            }
        }
    }
    $_SESSION['panier']['count'] = $countPanier;
}