<?php
class Archer extends Perso
{
    public $vie = 150;
    protected $atk = 40;
    protected $bouclier = 15;

    public function __construct($name)
    {
        parent::__construct($name);
        $this->name = strtoupper($name);
    }
}