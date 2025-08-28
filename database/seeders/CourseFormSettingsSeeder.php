<?php

namespace Database\Seeders;

use App\Models\CourseFormSetting;
use Illuminate\Database\Seeder;

class CourseFormSettingsSeeder extends Seeder
{
    public function run()
    {
        CourseFormSetting::create([
            'key' => 'contact_heading',
            'value' => 'We’d love to hear from you!'
        ]);
        CourseFormSetting::create([
            'key' => 'contact_email',
            'value' => 'customer.support@learningspace.com'
        ]);
        CourseFormSetting::create([
            'key' => 'contact_location',
            'value' => 'Riyadh King Abdul Aziz Branch Rd, Alyasmin, Riyadh 13322, KSA'
        ]);
        CourseFormSetting::create([
            'key' => 'contact_phone',
            'value' => '198421'
        ]);
    }
}