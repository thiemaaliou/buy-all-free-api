<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateForeignKeys extends Migration {

	public function up()
	{
		Schema::table('sommaire', function(Blueprint $table) {
			$table->foreign('created_by')->references('id')->on('users')
						->onDelete('restrict')
						->onUpdate('restrict');
		});
		Schema::table('lecon', function(Blueprint $table) {
			$table->foreign('sommaire_id')->references('id')->on('sommaire')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('lecon', function(Blueprint $table) {
			$table->foreign('created_by')->references('id')->on('users')
						->onDelete('restrict')
						->onUpdate('restrict');
		});
	}

	public function down()
	{
		Schema::table('sommaire', function(Blueprint $table) {
			$table->dropForeign('sommaire_created_by_foreign');
		});
		Schema::table('lecon', function(Blueprint $table) {
			$table->dropForeign('lecon_sommaire_id_foreign');
		});
		Schema::table('lecon', function(Blueprint $table) {
			$table->dropForeign('lecon_created_by_foreign');
		});
	}
}