<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Users extends Model
{

    protected $table = 'users';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at', 'created_at', 'updated_at'];
    protected $fillable = array('first_name', 'last_name', 'phone', 'active', 'email', 'solde', 'uid', 'account_type', 'first_parent_id', 'second_parent_id', 'third_parent_id', 'password');
    protected $visible = array('first_name', 'last_name', 'phone', 'active', 'email', 'solde', 'uid', 'account_type', 'first_parent_id', 'second_parent_id', 'third_parent_id');

    public function first_parent()
    {
        return $this->hasOne('Users', 'id');
    }

    public function second_parent()
    {
        return $this->hasMany('Users', 'id');
    }

    public function third_parent()
    {
        return $this->hasMany('Users', 'id');
    }

}
