<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('homes', function (Blueprint $table) {
            $table->json('bridge_gap_title')->nullable();               // Multi-language title
            $table->json('bridge_gap_description')->nullable();         // Multi-language description
            $table->json('bridge_gap_button_name')->nullable();         // Multi-language button text
            $table->string('bridge_gap_button_link')->nullable();       // Button link URL
            $table->string('bridge_gap_image')->nullable();             // Image path
            $table->boolean('bridge_gap_show')->default(false);         // Show/Hide toggle
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('homes', function (Blueprint $table) {
            $table->dropColumn([
                'bridge_gap_title',
                'bridge_gap_description',
                'bridge_gap_button_name',
                'bridge_gap_button_link',
                'bridge_gap_image',
                'bridge_gap_show',
            ]);
        });
    }
};