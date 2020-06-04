<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogImagenesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blog_imagenes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('imagen')->nullable();
            $table->string('orden')->nullable();
            $table->unsignedBigInteger('id_blog')->nullable();
            $table->foreign('id_blog')->references('id')->on('blogs')->onDelete("cascade");
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
        Schema::dropIfExists('blog_imagenes');
    }
}
