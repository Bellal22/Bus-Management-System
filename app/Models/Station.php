<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Station extends Model
{
    use HasFactory;
    protected $fillable = ['city_id'];

    public function trips()
    {
        return $this->belongsToMany(Trip::class, 'trip_station');
    }
}
