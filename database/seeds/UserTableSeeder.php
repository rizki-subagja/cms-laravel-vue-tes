<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\User;
use App\Role;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User;
            $user->name = 'User1';
            $user->email = 'user1@gmail.com';
            $user->password = bcrypt('user1111');
            $user->save();
            $user->roles()->attach(Role::where('name', 'user')->first());

            $admin = new User;
            $admin->name = 'Rizki Subagja';
            $admin->email = 'adminadmin@gmail.com';
            $admin->password = bcrypt('Persib1933');
            $admin->save();
            $admin->roles()->attach(Role::where('name', 'admin')->first());
    }
}
