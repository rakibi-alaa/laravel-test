<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model
{
    public function candidates()
    {
        return $this->belongsToMany(User::class,'user_applications','offer_id','user_id');
    }

    public function company()
    {
        return $this->hasOne(Company::class);
    }
    public function sector()
    {
        return $this->belongsTo(Sector::class,'sector_id');
    }
    public function educationLevel()
    {
        return $this->hasOne(EducationLevel::class);
    }
}
