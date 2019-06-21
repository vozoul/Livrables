<?php
$title = "Homepage";

$pdo = new PDO('mysql:dbname=jpw;host=localhost;charset=utf8', 'root', 'root', array(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION));
$res = $pdo->query('SELECT * FROM products');

var_dump($res->fetchAll(PDO::FETCH_OBJ));