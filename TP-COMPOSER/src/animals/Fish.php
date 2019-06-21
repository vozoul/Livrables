<?php

namespace App\Animals;


use App\Animal;
use App\Interfaces\CanSwim;

class Fish extends Animal implements CanSwim {

    /**
     * @return string
     */
    protected function getNoise(): string
    {
        return "bloubloublou";
    }
}