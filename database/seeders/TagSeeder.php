<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Tag;
use Illuminate\Support\Str;

class TagSeeder extends Seeder
{
    public function run()
    {
        $tags = [
            'PHP', 'Laravel', 'JavaScript', 'VueJS', 'React', 
            'CSS', 'HTML', 'MySQL', 'API', 'Backend', 'Frontend',
            'DevOps', 'Docker', 'Git', 'Testing'
        ];

        foreach ($tags as $tagName) {
            Tag::updateOrCreate(
                ['slug' => Str::slug($tagName)],
                ['name' => $tagName]
            );
        }
    }
}
