<?php

namespace App\Animals;


use App\Animal;
use App\Interfaces\CanFly;
use App\Interfaces\CanWalk;

class Dove extends Animal implements CanFly, CanWalk
{

    /**
     * @return string
     */
    protected function getNoise(): string
    {
        return "RouRouuu";
    }
}