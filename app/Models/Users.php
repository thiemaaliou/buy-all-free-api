<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Users extends Model 
{

    protected $table = 'users';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('firstname', 'lastname', 'phone', 'address', 'type');
    protected $visible = array('firstname', 'lastname', 'phone', 'address', 'type');

    public function articles()
    {
        return $this->hasMany('Articles', 'created_by');
    }

    public function reads()
    {
        return $this->hasMany('Reads', 'users_id');
    }

    public function downloads()
    {
        return $this->hasMany('Downloads', 'users_id');
    }

}