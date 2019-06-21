<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function viewHomePage()
    {
        return view('home');
    }

    public function viewListProductPage()
    {
        return view('listproducts');
    }

    public function viewContactPage()
    {
        return view('contact');
    }

    public function viewListBasket()
    {
        return view('basket');
    }

    public function viewProduct()
    {
        return view('product');
    }

    public function viewRegister()
    {
        return view('register');
    }

}
