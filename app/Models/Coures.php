<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Coures extends Model 
{

    protected $table = 'courses';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('authors_id', 'articles_id');
    protected $visible = array('authors_id', 'articles_id');

}