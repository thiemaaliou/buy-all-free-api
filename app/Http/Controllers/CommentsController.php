<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Repositories\CommentsRepository;
use App\Models\Comments;

class CommentsController extends Controller
{

  public function __construct(CommentsRepository $repo)
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
      $data = $this->repo->all();
      return $this->successResponse($data,  "Liste des commentaires");
    } catch (\Exception $e) {
      return $this->errorResponse('Impossiblede trouver les commentaires');
    }
  }

  public function getCommentsByArticle($id)
  {
    try {
      $data = Comments::where('articles_id', $id)->where('approved', 1)->get();
      return $this->successResponse($data,  "Liste des commentaires pour un article");
    } catch (\Exception $e) {
      return $this->errorResponse('Impossiblede trouver les commentaires');
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
        return $this->successResponse($data,  "Commentaire ajouté avec succès");
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
  public function update($id, Request $request)
  {
    try {
        $data = $this->repo->update($request->all(), $id);
        return $this->successResponse($data,  "Commentaire mis a jour avec succès");
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
      return $this->successResponse($data,  "Commentaire supprimé avec succès");
    } catch (\Exception $e) {
      return $this->errorResponse($e->getMessage());
    }
  }

}

?>
