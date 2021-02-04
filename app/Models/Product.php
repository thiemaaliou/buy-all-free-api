<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{

    protected $table = 'product';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at', 'created_at', 'updated_at'];
    protected $fillable = array('name', 'price', 'code', 'created_by');
    protected $visible = array('id', 'name', 'price', 'code', 'created_by', 'created_at');



    public function users()
    {
        return $this->belongsTo('Models\Users', 'created_by');
    }

}
