<?php

namespace App\Repositories;

use App\Models\Likes;
use Illuminate\Support\Facades\DB;

class LikesRepository extends Repository
{
    function __construct(){
		$this->model = new Likes();
	}

}
