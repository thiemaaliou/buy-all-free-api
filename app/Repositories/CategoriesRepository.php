<?php

namespace App\Repositories;

use App\Models\Categories;
use Illuminate\Support\Facades\DB;

class CategoriesRepository extends Repository
{
    function __construct(){
		$this->model = new Categories();
	}

}
