<?php

namespace App\Repositories;

use App\Models\Articles;
use Illuminate\Support\Facades\DB;

class ArticlesRepository extends Repository
{
    function __construct(){
		$this->model = new Articles();
	}

}
