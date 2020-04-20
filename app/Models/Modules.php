<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Modules extends Model 
{

    protected $table = 'modules';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];

}