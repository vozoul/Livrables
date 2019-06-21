@extends('layout')
@section('title', 'home')
@section('content')
<form action="" method="post" >
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Email</label>
            <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Mot de passe</label>
            <input type="password" class="form-control" id="inputPassword4" placeholder="Mot de passe">
        </div>
    </div>
    <div class="form-group">
        <label for="inputAddress">Addresse</label>
        <input type="text" class="form-control" id="inputAddress" placeholder="123 Rue du bois">
    </div>
    <div class="form-group">
        <label for="inputAddress2">Addresse 2</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartement, studio, ou étage">
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCity">Ville</label>
            <input type="text" class="form-control" id="inputCity">
        </div>
        <div class="form-group col-md-4">
            <label for="inputState">Region</label>
            <select id="inputState" class="form-control">
                <option selected>Choose...</option>
                <option>...</option>
            </select>
        </div>
        <div class="form-group col-md-2">
            <label for="inputZip">Code Postal</label>
            <input type="text" class="form-control" id="inputZip">
        </div>
    </div>
    <div class="form-group">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
                Check me out
            </label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Sign in</button>
</form>
@endsection