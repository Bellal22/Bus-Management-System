<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CityRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true; // for simplicity
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name_ar' => 'required|unique:cities',
            'name_en' => 'required|unique:cities',
        ];
    }
    public function messages()
    {
        return [
            "name_ar.required" => "Arabic City name is required",
            "name_ar.unique" => "Arabic City name Already exists",
            "name_en.required" => "English City name is required",
            "name_en.unique" => "Arabic City name Already exists",
        ];
    }

}
