<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateArticlesTable extends Migration {

	public function up()
	{
		Schema::create('articles', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->longText('contenu')->nullable();
			$table->integer('created_by')->unsigned();
		});
	}

	public function down()
	{
		Schema::drop('articles');
	}
}