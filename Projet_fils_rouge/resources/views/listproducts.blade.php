@extends('layout')
@section('title','productslist')
<link rel="stylesheet" href="{{asset('css/responsive.css')}}" />


@section('content')


<div class="container">
    <div class="row justify-content-center border-left border-right">
        @foreach($arrayProduct as $product)
    <div class="  card  align my-3 mx-2" style="width: 18rem ;background-color: #FFD899 ">
        <div class="  pe-7s-like  ">+</div>
        <div class="  pe-7s-shopbag ">+</div>

        <img src="{{$product['image']}}" class=" card-img-top border-bottom bor " alt="photo">
        <div class="card-body">
            <p class="card-text text-uppercase text-center">{{$product['name']}}</p>
            <p class="card-text text-uppercase text-center">{{$product['price']}} &#128;</p>


        </div>

    </div>
        @endforeach
    </div>
</div>

@endsection