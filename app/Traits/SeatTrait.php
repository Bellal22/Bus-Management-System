<?php
namespace App\Traits;
use App\Models\Bus;
use App\Models\Seat;
use App\Models\Booking;
use Illuminate\Support\Facades\DB;
trait SeatTrait {

    public function create_seats($bus)
    {
        // \dd($bus_id->id);
        $seat = new Seat; 

        $PNRs = $seat->seats_configs();
        $counter = 0 ; // to check how many seat created
        foreach ($PNRs as $value) {
            try {
                Seat::create([
                    'bus_id' => $bus->id, 
                    'pnr'    => $value
                ]);
                $counter++; 
            } catch (\Throwable $th) {
                break; 
            }
        }
        return $counter == 12 ?  true :  false ; 
    }
    public function available_seats($trip_id , $origin_id , $dist_id){
        $bookings = Booking::where('trip_id',$trip_id)->where('origin',$origin_id)->where('dist',$dist_id)->pluck('seat_id');
        return Seat::whereNotIn('id',$bookings)->get();
        
    }
}

?>