<?php

namespace App\Repositories;

use App\Models\Users;
use Illuminate\Support\Facades\DB;

class UsersRepository extends Repository
{
    function __construct(){
		$this->model = new Users();
	}

  public function getByUid($uid){
    return Users::where('uid', $uid)->first();
  }

}
