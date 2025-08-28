<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Course;
use App\Models\Tag;

class CourseTagSeeder extends Seeder
{
    public function run()
    {
        $courses = Course::all();
        $tags = Tag::all();

        foreach ($courses as $course) {
            // Attach 2-4 random tags per course
            $randomTags = $tags->random(rand(2, 4))->pluck('id')->toArray();
            $course->tags()->sync($randomTags);
        }
    }
}
