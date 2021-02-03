<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Repositories\UsersRepository;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use App\Models\Users;

class UsersController extends Controller
{

  public function __construct(UsersRepository $repo)
  {
      $this->repo = $repo;
  }

  /**
   * Display a listing of the resource.
   *
   * @return Response
   */
  public function index()
  {
    try {
      //var_dump(Auth::user());
      if(Auth::user()->account_type == 1){
          $data = $this->repo->getWhere('account_type', 2);
      }else{
          $data = Users::where('id', Auth::user()->id)->get();
      }
        //$data['user'] = Auth::user();
      return $this->successResponse($data, 'Liste');
    } catch (\Exception $e) {
      return $this->errorResponse($e->getMessage());
    }
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {

  }

  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store(Request $request)
  {
    try {
        $data = $request->all();
        $data['created_by'] =  Auth::id();
        $data['password'] =  Hash::make($data['password']);
        $data = $this->repo->create($data);
        return $this->successResponse($data, 'User added');
    } catch (\Exception $e) {
      Log::error($e->getMessage());
      return $this->errorResponse($e->getMessage());
    }
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function show($id)
  {

  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function edit($id)
  {

  }

  /**
   * Update the specified resource in storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function update(Request $request, $id)
  {
    try {
        $data = $this->repo->update($request->all(), $id);
        return $this->successResponse($data,  "Utilisateur mis a jour avec succès");
    } catch (\Exception $e) {
        Log::error($e->getMessage());
        return $this->errorResponse($e->getMessage());
    }
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function destroy($id)
  {

  }

  public function getUserByUid($uid){
    try {
        $data = $this->repo->getByUid($uid);
        return $this->successResponse($data, 'User details');
    } catch (\Exception $e) {
      Log::error($e->getMessage());
      return $this->errorResponse($e->getMessage());
    }
  }

}

?>
