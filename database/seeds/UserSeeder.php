<?php

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'firstname'     => 'john',
            'lastname'     => 'doe',
            'email'    => 'john@mail.com',
            'password' => 'john@mail.com',
        ]);
    }
}
