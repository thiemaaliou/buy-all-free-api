<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCoursesTable extends Migration {

	public function up()
	{
		Schema::create('courses', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->integer('authors_id')->unsigned();
			$table->integer('articles_id')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('courses');
	}
}