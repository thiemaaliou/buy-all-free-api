<?php

namespace App\Repositories;

use App\Models\Product;
use Illuminate\Support\Facades\DB;

class ProductRepository extends Repository
{
    function __construct(){
		$this->model = new Product();
	}

}
