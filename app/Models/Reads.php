<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Reads extends Model 
{

    protected $table = 'reads';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('users_id', 'artciles_id');
    protected $visible = array('users_id', 'artciles_id');

}