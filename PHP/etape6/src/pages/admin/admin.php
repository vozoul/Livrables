<?php

$db = bddConnect();

if(isset($_POST['add'])){
    $datas = $_POST;
    //echo "<pre>";
    //var_dump($datas);
    //echo "</pre>";



    $db->exec('INSERT INTO addresses(street, postCode, city, country, complement) VALUES (\'' . $datas['street'] . '\', \''.$datas['cp'].'\', \''.$datas['city'].'\', \''.$datas['country'].'\', \''.$datas['complement'].'\');
        INSERT INTO addresses(street, postCode, city, country, complement) VALUES (\'' . $datas['street2'] . '\', \''.$datas['cp2'].'\', \''.$datas['city2'].'\', \''.$datas['country2'].'\', \''.$datas['complement2'].'\');
        INSERT INTO users(name, firstName, mail, shipping_address, invoice_address) VALUES (\''.$datas['name'].'\', \''.$datas['firstname'].'\', \''.$datas['mail'].'\', (SELECT LAST_INSERT_ID()'.!isset($check) ? "-1" : "".'), (SELECT LAST_INSERT_ID()))');
}

$p = $_GET['page'];
$html = "<h1 class='py-3'><i class='fas fa-cog'></i> Administration</h1>";

if($p === 'admin'){

    echo "<a href='?page=admin.add'><i class='fas fa-plus-circle'></i> Ajouter/Modifier un utilisateur</a>";

}else if($p === 'admin.add'): ?>

<form method='post' action=''>
    <h3 class='py-3'><i class='fas fa-plus-circle'></i> Ajouter un utilisateur</h3>
    <p class='text-right'><a href='?page=admin' class='btn btn-warning'><i class='far fa-arrow-alt-circle-left'></i> Retour à l'admin</a></p>
    <h4 pass='py-3'>Informations utilisateur</h4>
        <div class='form-group'>
            <label for='name'>Nom</label>
            <input type='text' class='form-control' id='name' name='name'>
        </div>
        <div class='form-group'>
            <label for='firstname'>Prénom</label>
            <input type='text' class='form-control' id='firstname' name='firstname'>
        </div>
        <div class='form-group'>
            <label for='mail'>Email</label>
            <input type='text' class='form-control' id='mail' name='mail'>
        </div>
        <div class='row'>
            <div class='col-6 justify-self-start'>
                <h4 pass='py-3'>Adresse de facturation</h4>
                <div class='form-group'>
                    <label for='street'>Numéro, Rue</label>
                    <input type='text' class='form-control' id='street' name='street'>
                </div>
                <div class='form-group row'>
                    <div class="col-4">
                        <label for='cp'>Code Postale</label>
                        <input type='text' class='form-control' id='cp' name='cp'>
                    </div>
                    <div class="col-8">
                        <label for='city'>Ville</label>
                        <input type='text' class='form-control' id='city' name='city'>
                    </div>
                </div>
                <div class='form-group'>
                    <label for='country'>Pays</label>
                    <input type='text' class='form-control' id='country' name='country'>
                </div>
                <div class='form-group'>
                    <label for='complement'>Complement d'adresse</label>
                    <input type='text' class='form-control' id='complement' name='complement'>
                </div>
            </div>
            <div class='col-6 justify-self-end'>
                <div class='form-group'>
                    <h4 pass='py-3'>Adresse de livraison</h4>
                    <label for='street2'>Numéro, Rue</label>
                    <input type='text' class='form-control' id='street2' name='street2'>
                </div>
                <div class='form-group row'>
                    <div class="col-4">
                        <label for='cp'>Code Postale</label>
                        <input type='text' class='form-control' id='cp' name='cp'>
                    </div>
                    <div class="col-8">
                        <label for='city2'>Ville</label>
                        <input type='text' class='form-control' id='city2' name='city2'>
                    </div>
                </div>
                <div class='form-group'>
                    <label for='country2'>Pays</label>
                    <input type='text' class='form-control' id='country2' name='country2'>
                </div>
                <div class='form-group'>
                    <label for='complement2'>Complement d'adresse</label>
                    <input type='text' class='form-control' id='complement2' name='complement2'>
                </div>
            </div>
        </div>
    <p class='text-right py-3'><button type='submit' name='add' class='btn btn-success'>commander</button></p>
</form>
<?php endif;