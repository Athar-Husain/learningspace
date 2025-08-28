<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Language;

class LanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $languages = [
            [
                'language' => 'English',
                'iso_code' => 'en',
                'flag' => 'uploads/flags/1.png',
                'default_language' => true,
            ],
            [
                'language' => 'Spanish',
                'iso_code' => 'es',
                'flag' => 'uploads/flags/2.png',
                'default_language' => false,
            ],
            [
                'language' => 'French',
                'iso_code' => 'fr',
                'flag' => 'uploads/flags/3.png',
                'default_language' => false,
            ],
        ];

        foreach ($languages as $language) {
            Language::create($language);
        }
    }
}
