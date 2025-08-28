<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();

        // Optional: create one fixed admin
        User::create([
            'name' => 'Admin User',
            'email' => 'admin@example.com',
            'email_verified_at' => now(),
            'password' => Hash::make('password'),
            'role' => 1,
            'phone_number' => $faker->phoneNumber,
            'address' => $faker->address,
            'image' => 'uploads/default/admin-avatar.png',
        ]);

        // Instructors
        foreach (range(1, 5) as $i) {
            User::create([
                'name' => $faker->name,
                'email' => "instructor$i@example.com",
                'email_verified_at' => now(),
                'password' => Hash::make('password'),
                'role' => 2,
                'phone_number' => $faker->phoneNumber,
                'address' => $faker->address,
                'image' => null,
            ]);
        }

        // Students
        foreach (range(1, 10) as $i) {
            User::create([
                'name' => $faker->name,
                'email' => "student$i@example.com",
                'email_verified_at' => now(),
                'password' => Hash::make('password'),
                'role' => 3,
                'phone_number' => $faker->phoneNumber,
                'address' => $faker->address,
                'image' => null,
            ]);
        }
    }
}
