<?php

namespace App\Animals;


use App\Animal;
use App\Interfaces\CanSwim;
use App\Interfaces\CanWalk;

class Elephant extends Animal implements CanWalk, CanSwim
{

    /**
     * @return string
     */
    protected function getNoise(): string
    {
        return "toooouuut";
    }
}