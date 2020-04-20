<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;

use App\Http\Requests\UserRequest;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */


    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(UserRequest $request)
    {
      try {
        DB::beginTransaction();
        $user = new User();
        $user->firstname =  $request->firstname;
        $user->lastname =  $request->lastname;
        if($request->has('address')){
          $user->address =  $request->address;
        }
        $user->email =  $request->email;
        $user->phone =  $request->phone;
        $user->name = $request->name;
        $user->profil = $request->profil;
        $user->password =  Hash::make($request->password);
        $user->save();

        Db::commit();
        return $this->successResponse($user, "Utilisateur ajouté avec succès");

      } catch (\Exception $e) {
        DB::rollback();
        Log::error($e->getMessage());
        return $this->errorResponse($e->getMessage());
      }


    }
}
