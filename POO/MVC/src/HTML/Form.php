<?php
namespace App\HTML;

/**
 * Form permet de creer simplement un formulaire
 */
class Form{

    /**
     * @param $data [] proprités de la class
     */
    protected $data = [];

    /**
     * @param $tag string qui entoure une string
     */
    public $tag = 'p';

    /**
     * @param Mixed [] de parametres
     */
    public function __construct($data = array()){
        $this->data = $data;
    }

    /**
     * @param String $method definit la method a utiliser
     * @param String $action definit l'action a utiliser
     * @return String initie le formulaire
     */
    public function create($method, $action = null){
        return "<form method='{$method}' action='{$action}'>";
    }

    /**
     * @return String ferme la balise form
     */
    public function out(){
        return "</form>";
    }

    /**
     * @param $index Récupère la valeur de $data a l'index
     * @return String
     */
    protected function getValue($index){
        return isset($this->data[$index])?$this->data[$index]:null;
    }

    /**
     * @param String $html valeur entourée par la fonction
     * @return String
     */
    protected function surround($html){
        return "<{$this->tag}>{$html}</{$this->tag}>";
    }

    /**
     * @param String $name = le nom de l'entrée du formulaire
     * @param String $type optionnel definit le type d'entrée du formulaire
     * @return String
     */
    public function input($name, $type = null){
        is_null($type)? $type = "text" : '';
        return $this->surround(
            "<label for='{$name}'>".ucfirst($name)."</label>
            <input type='{$type}' id='{$name}' name='{$name}' value='".$this->getValue($name)."'>"
        );
    }
    
    /**
     * @param String $value optionnel defini le text du boutton
     * @return String de type boutton submit
     */
    public function submit($value = null){
        $val = (isset($value) && $value != null) ? $value : "Envoyer";
        return $this->surround("<button type='submit'>{$val}</button>");
    }
}