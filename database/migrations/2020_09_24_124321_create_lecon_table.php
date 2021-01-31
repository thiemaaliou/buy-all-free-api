<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateLeconTable extends Migration {

	public function up()
	{
		Schema::create('lecon', function(Blueprint $table) {
			$table->increments('id');
			$table->timestamps();
			$table->softDeletes();
			$table->string('title', 255);
			$table->text('content');
			$table->integer('sommaire_id')->unsigned();
			$table->integer('created_by')->unsigned();
			$table->integer('reads')->nullable();
		});
	}

	public function down()
	{
		Schema::drop('lecon');
	}
}