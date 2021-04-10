<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    use HasFactory;
    protected $fillable = ['bus_id','date','departure_time','arrival_time'];

    public function stations()
    {
        return $this->belongsToMany(Station::class, 'trip_station');
    }


}
