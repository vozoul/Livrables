<?php
function afficheArticle($key){
    require "data.php";

    $html = "<div class='card p-0 m-1'  style='width: 18rem;'>";
    $html .= "<img class='card-img-top float-sm-left' src='$image[$key]' alt='$name[$key]'>";
    $html .= "<div class='card-body'>";
    $html .= "<h5 class='card-title'>$name[$key]</h5>";
    $html .= "<p class='text-right'>$prix[$key] €</p>";
    $html .= "<p class='card-text text-center'><label for='check'>ajouter au panier </label><input type='checkbox' id='check' name='$key'></p>";
    //$html .= "<a href='?page=add&id=$key' name='add$key' class='btn btn-success text-left mx-1'>Ajouter</a>";
    $html .= "<a href='?page=article&id=$key' class='btn btn-warning text-right mx-1'>voir l'article</a>";
    $html .= "</div>";
    $html .= "</div>";
    return $html;
}

function afficherPanier($key, $value = null){
    require "data.php";
    $html = "<div class='card my-3'>";
    $html .= "<h5 class='card-header'>$name[$key]</h5>";
    $html .= "<div class='card-body'>";
    $html .= "<p class='card-text'>";
    $html .= "<img class='card-img float-left' width='60' height='66' src='$image[$key]' alt='$name[$key]'>";
    $html .= "<p class='text-right'>";
    if($value){
        $html .= "<input type='number' min='1' max='50' value='$value' name='$key'>";
    }else{
        $html .= "<input type='number' min='1' max='50' value='1' name='$key'>";
    }
    $html .= "<span class='price'>$prix[$key] €</span>";
    $html .= "</p>";
    $html .= "
        <span class='mt-3 float-right'>
        <p class='text-right'><input type='submit' class='btn btn-danger' name='$key' value='Supprimer'></p>
        </span>";
    $html .= "</p>";
    $html .= "</div>";
    $html .= "</div>";
    echo $html;
}

function totalPanier($data){
    require "data.php";
    $totalPanier = 0;
    foreach($data as $key => $value){
        if(is_numeric($value) && $key != 'commande' && $key != 'calc'){
            $totalPanier += $prix[$key]*$value;
        }else if($key != 'commande' && $key != 'calc' && $value != 'Supprimer'){
            $totalPanier += $prix[$key];
        }
    }
    return $totalPanier;
}

function delete($key){

}