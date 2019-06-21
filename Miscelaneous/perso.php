<?php
abstract class Perso
{
    CONST VIE_MAX = 150;

    protected $name = "";
    public $vie = 100;
    protected $atk = 25;
    protected $bouclier = 5;
    public $dateIsncription;
    protected $data = [];

    public function __construct($name){
        $this->name = $name;
        $this->dateIsncription = date('d-m-Y H:i:s');
    }

    public function getName(){
        return $this->name;
    }

    public function setName($name){
        $this->name = $name;
    }

    public function enCharge(){
        echo $this->name." crie : À L'ATTAQUE !!!! \n";
    }

    public function attaque($cible){
        $cible->vie -= $this->atk - $cible->bouclier;
    }
}