<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('login')->unique();
            $table->string('email')->unique();
            $table->string('password');
            $table->boolean('active')->default(0);
            $table->rememberToken();
            $table->timestamps();
        });
    }
    //{"id":"1","login":"admin","passw":"1adbb3178591fd5bb0c248518f39bf6d","name":"Admin User",
        //"email":"dev@madebyforward.com","scope":"A","branch":"H036,H037,H038,H039,H040","hash":null,"active":"1"},


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
