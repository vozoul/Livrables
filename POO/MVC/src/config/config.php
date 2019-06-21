<?php
namespace App;

class config{
    private static $_dbname;
    private static $_dbhost;
    private static $_dbuser;
    private static $_dbpass;

    public function dev(){ //utilisation de la bdd en local uniquement pour le dev
        self::$_dbname = 'jpw';
        self::$_dbhost = 'localhost';
        self::$_dbuser = 'root';
        self::$_dbpass = 'root';
    }

    public function prod(){ //pensez a crée des utilisateurs avec des droits distinct sur votre bdd distante
        self::$_dbname = ''; //nom de la bdd distante
        self::$_dbhost = ''; //lien vers la bdd
        self::$_dbuser = ''; //user de la bdd distante
        self::$_dbpass = ''; //pass de la bdd distante
    }

}