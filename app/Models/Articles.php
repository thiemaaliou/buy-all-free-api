<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Articles extends Model
{

    protected $table = 'articles';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('title', 'contenu', 'created_by', 'approved_by', 'categories_id');
    protected $visible = array('id', 'title', 'contenu', 'files', 'reads', 'created_by', 'approved_by', 'comments', 'likes', 'category');

    public function created_by()
    {
        return $this->belongsTo('App\Models\Users');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\Categories');
    }

    public function comments()
    {
        return $this->hasMany('App\Models\Comments', 'articles_id');
    }

    public function likes()
    {
        return $this->hasMany('App\Models\Likes', 'articles_id');
    }

    public function files()
    {
        return $this->hasMany('App\Models\Files', 'articles_id');
    }

    public function reads()
    {
        return $this->hasMany('App\Models\Reads', 'articles_id');
    }

}
