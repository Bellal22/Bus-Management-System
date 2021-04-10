<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BookingRequest extends FormRequest
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
            'name' => 'required|string',
            'origin' => 'required|exists:cities,id',
            'dist' => 'required|exists:cities,id',
            'phone' => 'required|numeric',
            'trip_id' => 'required|exists:trips,id',
            'bus_id' => 'required|exists:buses,id',
            'seat_id' => 'required|exists:seats,id,booked,0',
        ];
    }
}
