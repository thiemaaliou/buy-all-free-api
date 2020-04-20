<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Likes extends Model
{

    protected $table = 'likes';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('user_id', 'articles_id');
    protected $visible = array('id', 'user_id', 'articles_id');

    public function user()
    {
        return $this->belongsTo('App\Models\Users');
    }

    public function articles()
    {
        return $this->belongsTo('App\Models\Articles');
    }

}
