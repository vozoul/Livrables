<?php
require __DIR__ . '/vendor/autoload.php';

use App\Animals\BubbleFish;
use App\Animals\CatFish;
use App\Animals\ClownFish;
use App\Animals\Dove;
use App\Animals\Elephant;
use App\Animals\Fish;
use App\Animals\Parrot;
use App\Animals\Whale;
use App\Animals\Zebra;
use App\Zoo;

zoo::addAnimal(new Fish('raymond'));
zoo::addAnimal(new Fish('roger'));
zoo::addAnimal(new Fish('antoine'));
zoo::addAnimal(new Fish('simon'));
zoo::addAnimal(new Fish('herve'));
zoo::addAnimal(new BubbleFish('jose'));
zoo::addAnimal(new BubbleFish('monique'));
zoo::addAnimal(new BubbleFish('suzanne'));
zoo::addAnimal(new CatFish('grisette'));
zoo::addAnimal(new CatFish('sylvie'));
zoo::addAnimal(new ClownFish('jennie'));
zoo::addAnimal(new Elephant('arthur'));
zoo::addAnimal(new Elephant('john'));
zoo::addAnimal(new Zebra('sultan'));

zoo::addAnimal(new Parrot('jim'));
zoo::addAnimal(new Parrot('noam'));
zoo::addAnimal(new Parrot('coco'));
zoo::addAnimal(new Parrot('kiki'));
zoo::addAnimal(new Parrot('titus'));
zoo::addAnimal(new Parrot('flip'));
zoo::addAnimal(new Parrot('flap'));
zoo::addAnimal(new Parrot('flop'));
zoo::addAnimal(new Parrot('tic'));
zoo::addAnimal(new Parrot('tac'));
zoo::addAnimal(new Dove('toc'));
zoo::addAnimal(new Dove('twity'));


Zoo::visitTheZoo();