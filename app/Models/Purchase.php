<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Purchase extends Model
{

    protected $table = 'purchase';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at', 'created_at', 'updated_at'];
    protected $fillable = array('amount', 'purchase_details', 'client_id', 'created_by');
    protected $visible = array('id', 'amount', 'purchase_details', 'client_id', 'created_by', 'client');

    public function client()
    {
        return $this->belongsTo(Users::class, 'client_id');
    }

    public function created_by()
    {
        return $this->belongsTo('Models\Users', 'created_by');
    }

}
