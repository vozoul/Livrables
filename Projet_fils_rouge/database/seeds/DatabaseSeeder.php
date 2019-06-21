<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        factory(App\User::class, 10)->make()->each(function (\App\User $user){
            $user->shipping_address = factory(App\Address::class)->create()->id;
            $user->invoice_address = factory(App\Address::class)->create()->id;
            $user->save();
        });
    }
}
