<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;//por defecto
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            //reglas a aplicar al registro
            'email'=>'required|unique:users,email',
            'password'=>'required|min:8',
            'password_confirmation'=>'required|same:password',
            'name' =>'required',
            'cedula' =>'required',
            'apellido' =>'required',
            'municipio' =>'required',
            'localidad' =>'required',
            'direccion' =>'required',
            'tlf' =>'required',
            'tlm' =>'required',
            'credencial' =>'nullable' 
        ];
    }
}
