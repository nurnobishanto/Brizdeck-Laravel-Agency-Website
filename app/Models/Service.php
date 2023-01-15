<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Skill;


class Service extends Model
{
    use HasFactory;

    public function skills()
    {
        return $this->belongsToMany(Skill::class);
    }
}
