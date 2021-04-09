<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Bus;
use App\Models\Seat;
use Illuminate\Http\Request;
use App\Http\Requests\BusRequest;
use App\Traits\SeatTrait; 
class BusesController extends Controller
{
    use SeatTrait; 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Bus::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BusRequest $request)
    {
        $bus = Bus::create($request->validated());
        
        if($this->create_seats($bus)){
            $seats = Seat::where('Bus_id',$bus->id)->count();
            return response()->json(['bus' => $bus , 'seats' => $seats], 201); 
        }else{
            return response()->json(['bus' => $bus , 'seats' => 'failed'], 502); 
        }
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Bus  $bus
     * @return \Illuminate\Http\Response
     */
    public function show(Bus $bus)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Bus  $bus
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Bus $bus)
    {
        $city->update($request->all());
        return response()->json($city, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Bus  $bus
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bus $bus)
    {
        $bus->delete();
        return response()->json(null, 204);
    }
}
