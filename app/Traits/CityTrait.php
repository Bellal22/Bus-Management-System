<?php
namespace App\Traits;
use App\Models\City;
use App\Models\Station;
trait CityTrait {

    public function create_station($city)
    {
        // \dd($city);
        return Station::create(['city_id' => $city->id]) ? true : false ; 
    }
}

?>