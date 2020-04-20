<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comments extends Model
{

    protected $table = 'comments';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('contenu', 'created_by', 'articles_id', 'approved', 'parent_id');
    protected $visible = array('id', 'contenu', 'created_by', 'articles', 'approved', 'parent_id', 'files', 'reads');

    public function created_by()
    {
        return $this->belongsTo('App\Models\Users');
    }

    public function articles()
    {
        return $this->belongsTo('App\Models\Articles');
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
