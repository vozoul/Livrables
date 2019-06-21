<?php
namespace App;

class App{
    protected $_instance;

    public function __construct(){

    }

    public function __get($key){
        $method = 'get'.$this->ucfirst($key);
        $key = $method();
    }

    public function getInstance(){
        return $this->_instance;
    }

    public function setInstance($data){
        (isset($_instance) && ($this->_instance != $data)) ? $this->_instance = $data : $_instance;
        return $this->_instance;
    }
}