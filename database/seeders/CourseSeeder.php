<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Course;
use App\Models\User;
use App\Models\Category;
use App\Models\Subcategory;
use App\Models\Course_language;
use App\Models\Difficulty_level;

class CourseSeeder extends Seeder
{
    public function run()
    {
        $instructorUsers = User::where('role', 2)->get();
        $categories = Category::all();
        $subcategories = Subcategory::all();
        $languages = Course_language::all();
        $difficulties = Difficulty_level::all();

        foreach ($instructorUsers as $user) {
            for ($i = 1; $i <= 2; $i++) {
                Course::updateOrCreate(
                    [
                        'title' => "Sample Course {$i} by {$user->name}"
                    ],
                    [
                        'user_id' => $user->id,
                        'instructor_id' => $user->instructor ? $user->instructor->id : null,
                        'category_id' => $categories->random()->id ?? null,
                        'subcategory_id' => $subcategories->random()->id ?? null,
                        'course_language_id' => $languages->random()->id ?? null,
                        'difficulty_level_id' => $difficulties->random()->id ?? null,
                        'description' => "This is a sample description for Sample Course {$i}.",
                        'feature_details' => "Features of Sample Course {$i}",
                        'price' => rand(10, 100),
                        'slug' => \Str::slug("Sample Course {$i} by {$user->name}"),
                        'status' => 1,
                    ]
                );
            }
        }
    }
}
