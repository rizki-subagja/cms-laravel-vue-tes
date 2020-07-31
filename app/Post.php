<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    protected $fillable = ['user_id,', 'judul', 'konten', 'image'];

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}