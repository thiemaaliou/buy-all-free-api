<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateReadsTable extends Migration {

	public function up()
	{
		Schema::create('reads', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->integer('users_id')->unsigned();
			$table->integer('artciles_id')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('reads');
	}
}