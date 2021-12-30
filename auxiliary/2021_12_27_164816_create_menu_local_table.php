<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMenuLocalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menu_local', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('val1')->nullable();
            $table->string('val2')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->integer('ordering')->nullable();
            $table->boolean('active')->default(0);
            $table->foreignId('menu_id')->constrained('menus');
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
        Schema::dropIfExists('menu_local');
    }
}
