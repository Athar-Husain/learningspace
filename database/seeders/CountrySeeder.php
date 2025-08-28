<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Country;

class CountrySeeder extends Seeder
{
    public function run()
    {
        $countries = [
            ['short_name' => 'IN', 'country_name' => 'India', 'flag' => 'flags/in.png', 'slug' => 'india', 'phonecode' => '91', 'continent' => 'Asia'],
            ['short_name' => 'US', 'country_name' => 'United States', 'flag' => 'flags/us.png', 'slug' => 'united-states', 'phonecode' => '1', 'continent' => 'North America'],
            ['short_name' => 'GB', 'country_name' => 'United Kingdom', 'flag' => 'flags/gb.png', 'slug' => 'united-kingdom', 'phonecode' => '44', 'continent' => 'Europe'],
            ['short_name' => 'AU', 'country_name' => 'Australia', 'flag' => 'flags/au.png', 'slug' => 'australia', 'phonecode' => '61', 'continent' => 'Oceania'],
            ['short_name' => 'CA', 'country_name' => 'Canada', 'flag' => 'flags/ca.png', 'slug' => 'canada', 'phonecode' => '1', 'continent' => 'North America'],
            [
    'short_name' => 'SA',
    'country_name' => 'Saudi Arabia',
    'flag' => 'flags/sa.png',
    'slug' => 'saudi-arabia',
    'phonecode' => '966',
    'continent' => 'Asia',
],
        ];

        foreach ($countries as $country) {
            Country::create($country);
        }
    }
}
