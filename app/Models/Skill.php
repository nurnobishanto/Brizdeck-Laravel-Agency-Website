<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Service;

class Skill extends Model
{
    use HasFactory;
    protected $translatable = ['name'];

    protected $table = 'skills';

    protected $fillable = ['name', 'percent'];

    public function services()
    {
        return $this->belongsToMany(Service::class)
        ->orderBy('created_at', 'DESC');
    }

}
