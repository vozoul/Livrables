<?php
namespace App\Database;

class Database{
    protected $dbname;
    protected $dbhost;
    protected $dbuser;
    protected $dbpass;
    private $db;

    public function __construct($dbname, $dbhost = 'localhost', $dbuser = 'root', $dbpass = 'root'){

        $this->dbname = $dbname;
        $this->dbhost = $dbhost;
        $this->dbuser = $dbuser;
        $this->dbpass = $dbpass;

    }
}