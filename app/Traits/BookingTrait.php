<?php
namespace App\Traits;
use App\Models\Booking;
use App\Models\Seat;
use App\Models\City;
use Illuminate\Support\Facades\DB;
trait BookingTrait {

    public function update_Seat($booking)
    {
        $seat = Seat::where('id',$booking->seat_id); 
        return $seat->update(['Booked' => 1 , 'booking_id' => $booking->id]) ? true : false;
    }

    public function valid_trip($trip ,$origin , $dist){
        $origin_order = DB::table('trip_station')->select('order')->where('trip_id',$trip)->where('station_id',$origin)->get(); 
        $dist_order = DB::table('trip_station')->select('order')->where('trip_id',$trip)->where('station_id',$dist)->get(); 
        
        return $origin_order < $dist_order ? true : false ; 
    }

    public function seat_booked($request){
        // \dd($request['trip_id']);
        $exist = Booking::where('trip_id',$request['trip_id'])->where('bus_id',$request['bus_id'])->where('seat_id',$request['seat_id'])->exists(); 
        return $exist ? true : false ; 
    }
}

?>