<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SmsConfig extends Model
{

    protected $table = 'sms_config';

    protected $fillable = array('application_id', 'client_id', 'client_secret');
    protected $visible = array('id', 'application_id', 'client_id', 'client_secret');

}
