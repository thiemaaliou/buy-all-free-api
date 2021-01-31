<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSommaireTable extends Migration {

	public function up()
	{
		Schema::create('sommaire', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->string('title', 255);
			$table->text('description')->nullable();
			$table->integer('created_by')->unsigned();
			$table->enum('type', array('fr', 'ar', 'en', 'wl'));
		});
	}

	public function down()
	{
		Schema::drop('sommaire');
	}
}