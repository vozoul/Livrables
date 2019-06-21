<?php
namespace App\Database;

use \PDO;
use App\Database\mysqlDatabase;

$title = 'Catalog';
$db = new mysqlDatabase('jpw');
$res = $db->query('SELECT * FROM products');
var_dump($res);