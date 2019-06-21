<?php
namespace App\HTML;

class BootstrapForm extends Form{
    

    /**
     * @param String $html valeur entourée par la fonction
     * @return String
     */
    protected function surround($html){
        return "<div class='form-group'>{$html}</div>";
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
            <input type='{$type}' id='{$name}' name='{$name}' value='".$this->getValue($name)."' class='form-control'>"
        );
    }
    
    /**
     * @return String de type boutton submit
     */
    public function submit($value = null){
        $val = (isset($value) && $value != null) ? $value : "Envoyer";
        return $this->surround("<button type='submit' class='btn btn-primary'>$val</button>");
    }
}