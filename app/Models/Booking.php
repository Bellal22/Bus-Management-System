<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    use HasFactory;
    protected $fillable = ['trip_id','bus_id','seat_id','name','phone','origin','dist'];
    // relations
    public function seat()
    {
        return $this->hasOne(Seat::class);
    }
    public function bus()
    {
        return $this->belongsTo(Bus::class);
    }
    public function trip()
    {
        return $this->belongsTo(Trip::class);
    }
    
}
