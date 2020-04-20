<?php

namespace App\Repositories;

use App\User;
use Illuminate\Support\Facades\DB;

class UsersRepository extends Repository
{
    function __construct(){
		$this->model = new User();
	}

}
