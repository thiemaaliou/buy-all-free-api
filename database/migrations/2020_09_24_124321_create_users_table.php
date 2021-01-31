<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUsersTable extends Migration {

	public function up()
	{
		Schema::create('users', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->string('first_name', 50);
			$table->string('last_name', 50);
			$table->string('phone', 20);
			$table->string('email', 25)->nullable();
			$table->enum('role', array('reader', 'writer', 'validator'));
			$table->datetime('last_login_time')->nullable();
			$table->string('avatar_name', 50)->nullable();
			$table->boolean('active')->default(0);
			$table->text('password');
		});
	}

	public function down()
	{
		Schema::drop('users');
	}
}