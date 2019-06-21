<?php

use Illuminate\Support\Str;
use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'firstName' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', // secret
        'phone' => '+33 (0) 147200001',
        'shipping_address' => factory(App\Address::class)->make(),     //l'id créer dans la table addresses
        'invoice_address' => factory(App\Address::class)->make(),      //l'id créer dans la table addresses
//        'email_verified_at' => now(),
        'remember_token' => Str::random(10),
    ];
});
