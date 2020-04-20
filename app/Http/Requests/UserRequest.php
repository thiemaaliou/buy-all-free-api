<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class UserRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
         'firstname'              => 'required|string|min:2',
         'lastname'               => 'required|string|min:2',
         'name'                    => 'required|string|min:2',
         'email'                   => 'required|string|min:6',
         'phone'                   => 'required|string',
         'address'                 => 'string',
         'profil'                 => 'string',
         'password'                => 'required|string|min:6',
        ];
    }

    protected function failedValidation(Validator $validator) {
        throw new HttpResponseException(response()->json($validator->errors(), 422));
    }
}
