<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNewSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('new_settings', function (Blueprint $table) {
            $table->id();
            $table->string('image');
            $table->string('phone');
            $table->string('email');
            $table->string('address');
            $table->string('whatsapp');
            $table->string('whatsapp_link');
            $table->string('facebook_link')->nullable();
            $table->string('twitter_link')->nullable();
            $table->string('pintorest_link')->nullable();
            $table->string('messenger_link')->nullable();
            $table->text('about')->nullable();
            $table->text('terms_condition')->nullable();
            $table->text('privacy_policy')->nullable();
            $table->text('refund_policy')->nullable();
            $table->text('google_map_link')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('new_settings');
    }
}
