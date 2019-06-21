<?php
/** ici j'initialise les DATAS tableau de données $article, $prix, $image */
$article = [
    "chemise",
    "pantalon",
    "pull"
];
$prix = [
    "17",
    "21",
    "30"
];
$image = [
    "../img/chemise.jpg",
    "../img/pantalon.jpg",
    "../img/pull.jpg"
];
/** FIN DATA */

//pour chaque DATAS compter de $aricle en partant de 0 jusqu'au total de $article
for($i=0; $i<count($article); $i+=1){
    //FAIT et/ou AFFICHE la correspondance à $i l'index du tableau de la DATA selectionner ($artcile, $prix, $image)
    echo "<!-- affiche l'image =========================================== lenom de l'article ==================================== son prix ======== -->";
    echo '<p><img src="'.$image[$i].'" width="66" height="60" alt="'.$article[$i].'"><span>'.$article[$i].'</span><span>'.$prix[$i].'</span></p>';
}
?>