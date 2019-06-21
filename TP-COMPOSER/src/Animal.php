<?php

namespace App;


abstract class Animal{
    private $name;

    /**
     * Animal constructor.
     * @param $name
     */
    public function __construct($name){
        $this->name = $name;
    }

    /**
     * @return mixed
     */
    public function getName(){
        return $this->name;
    }

    /**
     * @return string
     */
    protected abstract function getNoise():string;

    /**
     * @return string
     */
    public function noise(){
        return $this->getNoise()."\n";
    }
}
