<?php

namespace App\Http\Controllers;

use App\Comment;
use App\Events\CommentSent;
use App\Post;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function store(Post $post)
    {
        $this->validate(request(), [
            'konten' => 'required',
        ]);

        $user = auth()->user();

        $comment = Comment::create([
            'user_id' => $user->id,
            'post_id' => $post->id,
            'konten'  => request('konten'),
        ]);

        broadcast(new CommentSent($user, $comment))->toOthers();

        return ['status' => 'Komentar Terkirim!'];
    }

    public function index(Post $post)
    {
        return $post->comments()->with('user')->get();
    }
}