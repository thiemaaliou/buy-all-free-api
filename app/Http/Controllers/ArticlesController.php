<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Repositories\ArticlesRepository;
use App\Http\Controllers\FilesController;
use App\Models\Articles;

class ArticlesController extends Controller
{

  public function __construct(ArticlesRepository $repo)
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
      $data = Articles::with(['files', 'comments'])->get();
      return $this->successResponse($data,  "Liste des articles");
    } catch (\Exception $e) {
      return $this->errorResponse('Impossiblede trouver les articles');
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
        $request->articles_id = $data->id;
        $fileCtrl = new FilesController();
        $file = $fileCtrl->store($request);
        return $this->successResponse($data,  "Article ajouté avec succès");
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
      $data = Articles::where('id', $id)->with(['files', 'comments'])->get();
      return $this->successResponse($data,  "Liste des articles");
    } catch (\Exception $e) {
      return $this->errorResponse('Impossiblede trouver les articles');
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
        return $this->successResponse($data,  "Article mis a jour avec succès");
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
      return $this->successResponse($data,  "Article supprimé avec succès");
    } catch (\Exception $e) {
      return $this->errorResponse($e->getMessage());
    }

  }

}

?>
