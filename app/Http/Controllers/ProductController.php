<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Repositories\ProductRepository;
use App\Models\Product;

class ProductController extends Controller
{

  public function __construct(ProductRepository $repo)
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
      $data = Product::get();
      return $this->successResponse($data,  "Liste des produits");
    } catch (\Exception $e) {
      return $this->errorResponse('Impossible de trouver des produits');
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
        return $this->successResponse($data,  "Produit ajouté avec succès");
    } catch (\Exception $e) {
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
    try {
      $data = Produit::where('id', $id)->get();
      return $this->successResponse($data,  "Details produit");
    } catch (\Exception $e) {
      return $this->errorResponse('Impossible de trouver le produit');
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
        return $this->successResponse($data,  "Produit mis a jour avec succès");
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
      return $this->successResponse($data,  "Produit supprimé avec succès");
    } catch (\Exception $e) {
      return $this->errorResponse($e->getMessage());
    }

  }

}

?>
