<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAuthorsTable extends Migration {

	public function up()
	{
		Schema::create('authors', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->integer('users_id')->unsigned();
			$table->integer('cni')->nullable();
		});
	}

	public function down()
	{
		Schema::drop('authors');
	}
}