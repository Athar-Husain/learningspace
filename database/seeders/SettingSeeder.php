<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Setting;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $settings = [
            [
                'option_key' => 'site_name',
                'option_value' => 'EduPro LMS',
            ],
            [
                'option_key' => 'site_email',
                'option_value' => 'admin@edupro.com',
            ],
            [
                'option_key' => 'contact_number',
                'option_value' => '+1 800 123 4567',
            ],
            [
                'option_key' => 'homepage_title',
                'option_value' => 'Welcome to EduPro',
            ],
            [
                'option_key' => 'maintenance_mode',
                'option_value' => 'off',
            ],
        ];

        foreach ($settings as $setting) {
            Setting::create($setting);
        }
    }
}
