<?php
namespace App;

class autoloader{

    static function register(){
        spl_autoload_register([__CLASS__, 'autoload']);
    }
    
    static function autoload($class){
        if(strpos($class, __NAMESPACE__.'\\') === 0){
            $class = str_replace('App\\', '', $class);
            $class = str_replace('\\', '/', $class);
            require __DIR__."\\".$class.".php";
        }
    }
}