<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seat extends Model
{
    use HasFactory;
    protected $fillable = ['bus_id','pnr','booked'];

    public function seats()
    {
        return $this->belongsTo(Bus::class);
    }
}
