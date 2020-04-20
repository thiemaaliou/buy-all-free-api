<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Downloads extends Model 
{

    protected $table = 'downloads';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('users_id', 'articles_id');
    protected $visible = array('users_id', 'articles_id');

    public function users()
    {
        return $this->belongsTo('Users');
    }

    public function artciles()
    {
        return $this->belongsTo('Articles');
    }

}