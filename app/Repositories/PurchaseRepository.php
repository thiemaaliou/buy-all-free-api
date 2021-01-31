<?php

namespace App\Repositories;

use App\Models\Purchase;
use Illuminate\Support\Facades\DB;

class PurchaseRepository extends Repository
{
    function __construct(){
		$this->model = new Purchase();
	}

}
