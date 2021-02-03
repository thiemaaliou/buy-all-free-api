<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Repositories\PurchaseRepository;
use App\Repositories\UsersRepository;
use App\Models\Purchase;
use App\Models\Users as User;
use App\Traits\SendMessageTrait as SendMessage;

class PurchaseController extends Controller
{
  use SendMessage;

  public $clientrep;
  public function __construct(PurchaseRepository $repo)
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
      $data = $this->repo->withRelations('client');
      return $this->successResponse($data,  "Liste des achats");
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
          $user = Auth::user();
          $data['created_by'] =  $user->id;
          $data = $this->repo->create($data);
          $this->clientrep = new UsersRepository;
          if ($data->client_id) {
           $client = User::find($data->client_id);
           if($client->first_parent_id){
             $amount = 0.05 * $data->amount;
             $this->updateClientSolde($client->first_parent_id, $amount);

           }
           if($client->second_parent_id){
             $amount = 0.03 * $data->amount;
             $this->updateClientSolde($client->second_parent_id, $amount);
           }
           if($client->third_parent_id){
             $amount = 0.02 * $data->amount;
             $this->updateClientSolde($client->third_parent_id, $amount);
           }
        }
        return $this->successResponse($data,  "Achat ajouté avec succès");
    } catch (\Exception $e) {
        return $this->errorResponse($e->getMessage());
    }
  }

  public function updateClientSolde($user_id, $solde){
    $cl = User::find($user_id);
    $cl->solde = $cl->solde + $solde;
    $this->sendSms($cl, $solde);
    return $this->clientrep->update($cl->toArray(), $user_id);
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function show($id)
  {
    try {
      $data = $this->repo->show($id);
      return $this->successResponse($data,  "Details");
    } catch (\Exception $e) {
        return $this->errorResponse($e->getMessage());
    }
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
        return $this->successResponse($data,  "Achat mis a jour avec succès");
    } catch (\Exception $e) {
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
    try {
      $data = $this->repo->delete($id);
      return $this->successResponse($data,  "Achat supprimé avec succès");
    } catch (\Exception $e) {
      return $this->errorResponse($e->getMessage());
    }

  }

  public function sendSms($client, $solde){
    try {
      $data = $this->sendMessageToUser($client, $solde);
      return $this->successResponse($data,  "Liste des achats");
    } catch (\Exception $e) {
        return $this->errorResponse($e->getMessage());
    }

  }

}

?>
