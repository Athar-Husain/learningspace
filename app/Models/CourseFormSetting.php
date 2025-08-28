<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseFormSetting extends Model
{
    use HasFactory;

    // Define the table name (to avoid using the default plural form)
    protected $table = 'course_form_settings';

    // Define the fillable attributes for mass assignment
    protected $fillable = ['key', 'value'];

    // Optional: A helper method to retrieve settings by key
    public static function getSetting($key)
    {
        return self::where('key', $key)->first()->value ?? null;
    }
}