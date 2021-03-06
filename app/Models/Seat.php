<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Bus;

class Seat extends Model
{
    use HasFactory;
    protected $fillable = ['bus_id','pnr','booked'];

    // relations
    public function Bus()
    {
        return $this->belongsTo(Bus::class);
    }
    public function booking()
    {
        return $this->hasOne(Booking::class);
    }


    // logic
    public function seats_configs(){
        $pnr_array = ['A1','A2','B1','B2','C1','C2','C3','C4','D1','D2','D3','D4']; // seats confiqurations 
        return $pnr_array;
    }
    public function city_id($city_name){
        return City::where('name_ar',$city_name)->orWhere('name_en',$city_name)->get('id');
    }

}
