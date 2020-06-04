<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateIconosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('iconos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('imagen')->nullable();
            $table->text('titulo')->nullable();
            $table->text('texto')->nullable();
            $table->string('seccion')->nullable();
            $table->string('orden')->nullable();
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
        Schema::dropIfExists('iconos');
    }
}
