<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Course;
use App\Models\LearnKeyPoint;

class LearnKeyPointSeeder extends Seeder
{
    public function run()
    {
        $courses = Course::all();

        foreach ($courses as $course) {
            // Create 3 key points per course
            for ($i = 1; $i <= 3; $i++) {
                LearnKeyPoint::updateOrCreate(
                    [
                        'course_id' => $course->id,
                        'name' => "Key point {$i} for course {$course->title}",
                    ]
                );
            }
        }
    }
}

