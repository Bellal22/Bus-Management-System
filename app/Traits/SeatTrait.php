<?php
namespace App\Traits;
use App\Models\Bus;
use App\Models\Seat;
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
}

?>