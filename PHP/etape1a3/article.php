<?php
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
$i = 0;
//$i = 1;
//$i = 2;
?>
<p><img src="<?= $image[$i]; ?>" alt="<?= $article; ?>"><span><?= $article[$i]; ?> </span><span><?= $prix[$i]; ?></span></p>