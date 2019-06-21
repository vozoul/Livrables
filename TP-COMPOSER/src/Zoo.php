<?php
/**
 * Created by PhpStorm.
 * User: Utilisateur
 * Date: 15/02/2019
 * Time: 11:22
 */

namespace App;


use App\Interfaces\CanFly;
use App\Interfaces\CanSwim;
use App\Interfaces\CanWalk;

class Zoo
{
    private static $Aviary = null;
    private static $Aquarium = null;
    private static $Fence = null;

    public static function getAviary()
    {
        return self::$Aviary;
    }

    public static function getAquarium()
    {
        return self::$Aquarium;
    }

    public static function getFence()
    {
        return self::$Fence;
    }

    public static function addAnimal(Animal $animal)
    {
        if(($animal instanceof CanSwim) && !($animal instanceof CanWalk) && !($animal instanceof CanFly)){
            if(self::$Aquarium === null){
                self::$Aquarium = new Enclosure();
            }
            self::$Aquarium->addAnimal($animal);
        }elseif($animal instanceof CanFly){
            if(self::$Aviary === null){
                self::$Aviary = new Enclosure();
            }
            self::$Aviary->addAnimal($animal);
        }elseif($animal instanceof CanWalk){
            if(self::$Fence === null){
                self::$Fence = new Enclosure();
            }
            self::$Fence->addAnimal($animal);
        }
    }

    public static function visitTheZoo(){
        if(self::$Aquarium != null){
            echo "Voici notre bel Aquarium avec: "."\n";
            echo self::getAquarium();
        }
        if(self::$Aviary != null){
            echo "Voici notre belle Volière avec; "."\n";
            echo self::getAviary();
        }
        if(self::$Fence != null){
            echo "Voici notre bel Enclos avec: "."\n";
            echo self::getFence();
        }
    }
}