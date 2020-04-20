<?php

namespace App\Repositories;

use App\Models\Comments;
use Illuminate\Support\Facades\DB;

class CommentsRepository extends Repository
{
    function __construct(){
		$this->model = new Comments();
	}

}
