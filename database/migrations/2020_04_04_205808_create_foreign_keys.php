<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateForeignKeys extends Migration {

	public function up()
	{
		Schema::table('articles', function(Blueprint $table) {
			$table->foreign('created_by')->references('id')->on('users')
						->onDelete('restrict')
						->onUpdate('restrict');
		});
		Schema::table('reads', function(Blueprint $table) {
			$table->foreign('users_id')->references('id')->on('users')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('reads', function(Blueprint $table) {
			$table->foreign('artciles_id')->references('id')->on('articles')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('files', function(Blueprint $table) {
			$table->foreign('articles_id')->references('id')->on('articles')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('downloads', function(Blueprint $table) {
			$table->foreign('users_id')->references('id')->on('users')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('downloads', function(Blueprint $table) {
			$table->foreign('articles_id')->references('id')->on('articles')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('courses', function(Blueprint $table) {
			$table->foreign('authors_id')->references('id')->on('authors')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('courses', function(Blueprint $table) {
			$table->foreign('articles_id')->references('id')->on('articles')
						->onDelete('no action')
						->onUpdate('no action');
		});
		Schema::table('authors', function(Blueprint $table) {
			$table->foreign('users_id')->references('id')->on('users')
						->onDelete('no action')
						->onUpdate('no action');
		});
	}

	public function down()
	{
		Schema::table('articles', function(Blueprint $table) {
			$table->dropForeign('articles_created_by_foreign');
		});
		Schema::table('reads', function(Blueprint $table) {
			$table->dropForeign('reads_users_id_foreign');
		});
		Schema::table('reads', function(Blueprint $table) {
			$table->dropForeign('reads_artciles_id_foreign');
		});
		Schema::table('files', function(Blueprint $table) {
			$table->dropForeign('files_articles_id_foreign');
		});
		Schema::table('downloads', function(Blueprint $table) {
			$table->dropForeign('downloads_users_id_foreign');
		});
		Schema::table('downloads', function(Blueprint $table) {
			$table->dropForeign('downloads_articles_id_foreign');
		});
		Schema::table('courses', function(Blueprint $table) {
			$table->dropForeign('courses_authors_id_foreign');
		});
		Schema::table('courses', function(Blueprint $table) {
			$table->dropForeign('courses_articles_id_foreign');
		});
		Schema::table('authors', function(Blueprint $table) {
			$table->dropForeign('authors_users_id_foreign');
		});
	}
}