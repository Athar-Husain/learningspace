<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Instructor;
use App\Models\User;

class InstructorSeeder extends Seeder
{
    public function run()
    {
        // Get all users with role = 2 (instructors)
        $instructorUsers = User::where('role', 2)->get();

        foreach ($instructorUsers as $user) {
            Instructor::updateOrCreate(
                ['user_id' => $user->id],
                [
                    'uuid' => \Str::uuid()->toString(),
                    'first_name' => explode(' ', $user->name)[0] ?? 'First',
                    'last_name' => explode(' ', $user->name)[1] ?? 'Last',
                    'status' => 1,
                    'slug' => \Str::slug($user->name),
                ]
            );
        }
    }
}
