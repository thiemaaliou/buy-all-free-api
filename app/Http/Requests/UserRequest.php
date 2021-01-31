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
         'first_name'          => 'required|string|min:2',
         'last_name'           => 'required|string|min:2',
         'email'               => 'required|string|min:6',
         'phone'               => 'required|string',
         'account_type'        => 'required|integer',
         'active'              => 'required|boolean',
         'uid'                 => 'required|string|min:6',
         'solde'               => 'required|integer',
         'first_parent_id'     => 'integer',
         'second_parent_id'    => 'integer',
         'third_parent_id'     => 'integer'
        ];
    }

    protected function failedValidation(Validator $validator) {
        throw new HttpResponseException(response()->json($validator->errors(), 422));
    }
}
