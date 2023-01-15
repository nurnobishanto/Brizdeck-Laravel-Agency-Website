<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

use App\Models\User;

class Comment extends Model
{
    use HasFactory;
    public $table = 'comments';
    public $fillable = [
        'user_id','post_id', 'comment'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
