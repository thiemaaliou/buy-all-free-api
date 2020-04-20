<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Files;

class FilesController extends Controller
{

  /**
   * Display a listing of the resource.
   *
   * @return Response
   */
  public function index()
  {

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
      $photos = $request->images;
      $sub_path = 'app/public/images';  //on definit le repertoir ou on va deposer l'images
      $destination_path = storage_path($sub_path);  //on creer le lien public
       try {
         foreach ($photos as $photo) {
           if (preg_match('/^data:image\/(\w+);base64,/', $photo)) {
             $exts = explode(",", $photo);
             $ext;
             switch ($exts[0]) {//check image's extension
                 case "data:image/jpeg;base64":
                     $ext = "jpeg";
                     break;
                 case "data:image/png;base64":
                     $ext = "png";
                     break;
                 default://should write cases for more images types
                     $ext = "jpg";
                     break;
             }
             if(strrpos($photo, 'image/png', 0) == false){
                $photo = str_replace('data:image/jpeg;base64,', '', $photo);
             }else{
                $photo = str_replace('data:image/png;base64,', '', $photo);
             }

  		         $photo = str_replace(' ', '+', $photo);
               $name = $request->articles_id.'_'.time().'.'.$ext; //on redefini le nom de l'image
               $file = base64_decode($photo);
              \File::put($destination_path. '/' . $name, $file);
               $path[] = Storage::url($name);
               Files::create([
                 'articles_id' => $request->articles_id,
                 'name' => $name
               ]);
           }else{
                 $extension = $photo->getClientOriginalExtension();
                 $filename  = $request->articles_id.'_' . time() . '.' . $extension;
                 $photo->storeAs('public/images', $filename);
                 $path[] = Storage::url($filename);
                 Files::create([
                   'articles_id' => $request->articles_id,
                   'name' => $filename
                 ]);
           }

          }
         return response()->json(['error' => false, 'message' => 'Images téléchargés avec succès', 'path' => $path]);

       } catch (\Exception $e) {
         return response()->json(['error' => true, 'code' => 500, 'message' => 'Echec téléchargement'.$e->getMessage()]);
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
  public function update($id)
  {

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

}

?>
