<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SmsConfig extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('sms_config', function(Blueprint $table) {
        $table->increments('id');
        $table->text('application_id')->nullable();
        $table->text('client_id')->nullable();
        $table->text('client_secret')->nullable();

      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        	Schema::drop('sms_config');
    }
}
