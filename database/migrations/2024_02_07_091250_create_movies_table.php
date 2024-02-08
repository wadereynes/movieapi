<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMoviesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('categoryIds');
            $table->string('time');
            $table->string('year');
            $table->double('star');
            $table->string('title');
            $table->string('video')->nullable();
            $table->string('director');
            $table->integer('active')->default(1)->comment('1: active, 0: passive');
            $table->integer('isHome')->default(0)->comment('0 if home, 1 if nonhome');
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
        Schema::dropIfExists('movies');
    }
}
