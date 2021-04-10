<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use Illuminate\Http\Request;
use App\Http\Requests\BookingRequest;
use App\Traits\BookingTrait; 

class BookingsController extends Controller
{
    use BookingTrait; 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function available_seats()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BookingRequest $request)
    { 
        // \dd($request->origin);
        if(!$this->valid_trip($request->trip_id,$request->origin , $request->dist)) return response()->json(['message' => 'the trip is not exist'],400);
        
        if($this->seat_booked($request->validated())) return response()->json(['message' => 'the seat booked already'],400);
        
        $booking = Booking::create($request->validated());
        return $this->update_Seat($booking) ? response()->json($booking,201) : response()->json($booking,400); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Booking  $booking
     * @return \Illuminate\Http\Response
     */
    public function show(Booking $booking)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Booking  $booking
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Booking $booking)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Booking  $booking
     * @return \Illuminate\Http\Response
     */
    public function destroy(Booking $booking)
    {
        //
    }
}
