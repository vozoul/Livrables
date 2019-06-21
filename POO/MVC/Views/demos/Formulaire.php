<?php
    use App\HTML\BootstrapForm;

    $title = 'Formulaire';
    
    /**
     * Déclariont de la variable $form
     */
    $form = new BootstrapForm($_POST);
?>
    <div class="container">
        <!-- <h1 class="mt-5">Sticky footer with fixed navbar</h1> -->
        <div class="mt-5 py-5">
                            
            <?= $form->create('post'); ?>
            <?= $form->input('username');?>
            <?= $form->input('password', 'password'); ?>
            <?= $form->submit(); ?>
            <?= $form->out(); ?>
            
        </div>
    </div>