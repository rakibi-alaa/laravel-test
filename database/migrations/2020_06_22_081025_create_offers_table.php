<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOffersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offers', function (Blueprint $table) {
            $table->id();
            $table->string('ref')->unique();
            $table->string('title');
            $table->unsignedBigInteger('sector_id');
            $table->unsignedBigInteger('education_level_id');
            $table->string('localisation');
            $table->timestamp('expires_in');
            $table->foreign('sector_id')->references('id')->on('sectors');
            $table->foreign('education_level_id')->references('id')->on('education_levels');
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
        Schema::dropIfExists('offers');
    }
}
