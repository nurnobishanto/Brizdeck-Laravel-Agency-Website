<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Translatable;



class Tag extends Model
{
    use Translatable;

    protected $translatable = ['slug', 'name'];

    protected $table = 'tags';

    protected $fillable = ['slug', 'name'];

    public function posts()
    {
        return $this->belongsToMany(Voyager::modelClass('Post'))
        ->published()
        ->orderBy('created_at', 'DESC');
        // return $this->hasMany(Voyager::modelClass('Post'))
        //     ->published()
        //     ->orderBy('created_at', 'DESC');
    }

    
}
