<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sector extends Model
{
    public function offers()
    {
        return $this->hasMany(Offer::class);
    }
}
