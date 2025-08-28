<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCourseSettingsTable extends Migration
{
    public function up()
    {
        Schema::create('course_form_settings', function (Blueprint $table) {
            $table->id();
            $table->string('key'); // Name of the setting (e.g., course_title, course_subtitle)
            $table->text('value'); // Value for the setting (e.g., course description or title)
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('course_form_settings');
    }
}