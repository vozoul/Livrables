<?php
namespace App\Database;
use \PDO;

class mysqlDatabase extends Database{

    protected $db;

    public function __construct($dbname, $dbhost = 'localhost', $dbuser = 'root', $dbpass = 'root'){
        parent::__construct($dbname, $dbhost = 'localhost', $dbuser = 'root', $dbpass = 'root');
    }

    public function getDb(){
        $this->db = new PDO("mysql:dbname=$this->dbname;host=$this->dbhost;charset=utf8;", $this->dbuser, $this->dbpass, array(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION));
        return $this->db;
    }

    public function query($stmt, $attr = [], $one = false){
        if(!empty($attr)){
            $req = $this->getDb()->prepare($stmt);
            $req = $req->execute($attr);
        }else{
            $req = $this->getDb()->query($stmt);
        }
        $req->setFetchMode(PDO::FETCH_OBJ);
        if($one === true){
            $res = $req->fetch();
        }else{
            $res = $req->fetchAll();
        }
        return $res;
    }
}