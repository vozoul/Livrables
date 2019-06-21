    @extends('layout')
    @section('title', 'Panier')
    @push('style')
        <link rel="stylesheet" type="text/css" href="{{asset('css/cherii.css')}}"/>
        <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    @endpush
    @section('content')
        <div class="content">
            <p class='text-right my-2'><a href='{{asset('catalogue')}}' class='btn btn-back'><i class='fas fa-book-open'></i> Continuer les achats</a></p>
            <form method='post' action=''>
                <div class="card my-2">
                    <div class="row py-2">
                        <div class="card-text pl-4 pr-2">
                            <img src="{{asset('images/1.jpg')}}" alt="" width="60" height="60">
                        </div>
                        <div class="product-card mr-auto">
                            <div class="card-title">
                                <h4>Product Name 1</h4>
                            </div>
                            <div class="card-text">
                                <p>Extrait de la description du produit</p>
                            </div>
                        </div>
                        <div class="card-text pr-4 ml-auto justify-content-end">
                            <p class="text-right">price €</p>
                            <p>
                                Qté: <input type='number' min='1' max='50' value='1' name='name'>
                                <button type='submit' class='btn btn-none rounded-circle' name='' value='Supprimer'><i class='fas fa-times'></i></button>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card my-2">
                    <div class="row py-2">
                        <div class="card-text pl-4 pr-2">
                            <img src="{{asset('images/2.jpg')}}" alt="" width="60" height="60">
                        </div>
                        <div class="product-card mr-sm-auto">
                            <div class="card-title">
                                <h4>Product Name 2</h4>
                            </div>
                            <div class="card-text">
                                <p>Extrait de la description du produit</p>
                            </div>
                        </div>
                        <div class="card-text pr-4 ml-auto justify-content-end">
                            <p class="text-right">price €</p>
                            <p cals="text-right">
                                Qté: <input type='number' min='1' max='50' value='2' name='name'>
                                <button type='submit' class='btn btn-none rounded-circle' name='' value='Supprimer'><i class='fas fa-times'></i></button>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card my-2">
                    <div class="row py-2">
                        <div class="card-text pl-4 pr-2">
                            <img src="{{asset('images/3.jpg')}}" alt="" width="60" height="60">
                        </div>
                        <div class="product-card mr-auto">
                            <div class="card-title">
                                <h4>Product Name 3</h4>
                            </div>
                            <div class="card-text">
                                <p>Extrait de la description du produit</p>
                            </div>
                        </div>
                        <div class="card-text pr-4 ml-auto justify-content-end">
                            <p class="text-right">price €</p>
                            <p>
                                Qté: <input type='number' min='1' max='50' value='3' name='name'>
                                <button type='submit' class='btn btn-none rounded-circle' name='' value='Supprimer'><i class='fas fa-times'></i></button>
                            </p>
                        </div>
                    </div>
                </div>
                <p class='text-right'> Total de votre commande : PRICE €. </p>
                <p class='text-right'><button type='submit' class='btn btn-back valider' name='calc' value='recalculer'><i class='fas fa-cogs'></i> recalculer</button></p>
                <p class='text-right'>
                    <button type='submit' class='btn btn-none mx-3' name='vider' value='Vider le panier'><i class='far fa-trash-alt'></i> Vider le panier</button>
                    <button type='submit' class='btn btn-success valider' name='valide' value='Valider le panier'><i class='fas fa-check'></i> Valider</button></i>
                </p>
                </form>
        </div>
    @endsection