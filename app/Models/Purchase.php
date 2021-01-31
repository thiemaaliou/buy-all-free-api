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
    protected $fillable = array('amount', 'purchaseDetails', 'client_id', 'created_by');
    protected $visible = array('amount', 'purchaseDetails', 'client_id', 'created_by');

    public function client()
    {
        return $this->belongsTo('Models\Users', 'client_id');
    }

    public function created_by()
    {
        return $this->belongsTo('Models\Users', 'created_by');
    }

}
