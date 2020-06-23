<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EducationLevel extends Model
{
    public function offers()
    {
        return $this->hasMany(Offer::class);
    }
}
