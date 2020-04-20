<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDownloadsTable extends Migration {

	public function up()
	{
		Schema::create('downloads', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->integer('users_id')->unsigned();
			$table->integer('articles_id')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('downloads');
	}
}