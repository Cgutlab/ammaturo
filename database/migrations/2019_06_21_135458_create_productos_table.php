<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('nombre')->nullable();
            $table->longText('descripcion')->nullable();
            $table->text('archivo')->nullable();
            $table->longText('caracteristicas')->nullable();
            $table->text('video')->nullable();
            $table->text('plano')->nullable();
            $table->integer('destacado')->nullable();
            $table->unsignedBigInteger('id_superior')->nullable();
            $table->foreign('id_superior')->references('id')->on('familias')->onDelete("cascade");
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
        Schema::dropIfExists('productos');
    }
}
