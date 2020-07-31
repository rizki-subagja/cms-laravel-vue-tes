<?php

namespace App\Http\Controllers;

use App\Http\Resources\PostResource;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return PostResource::collection(Post::latest()->paginate(10));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'judul'     => 'required',
            'konten'    => 'required',
            'user_id'   => 'required',
            'image'     => 'required|mimes:jpg,jpeg,png,gif,svg',
        ]);

        $post = new Post;

        if ($request->hasFile('image'))
        {
            $image          = $request->file('image');
            $name           = Str::slug($request->judul).'.'.$image->getClientOriginalExtension();
            $destinationPath= public_path('/uploads/posts');
            $imagePath      = $destinationPath . "/" . $name;
            $image->move($destinationPath, $name);
            $post->image    = $name;
        }

        $post->user_id  = $request->user_id;
        $post->judul    = $request->judul;
        $post->konten   = $request->konten;
        $post->save();

        return new PostResource($post);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return new PostResource($post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $this->validate($request, [
            'judul' => 'required',
            'konten'=> 'required',
        ]);

        $post->update($request->only(['judul', 'konten']));

        return new PostResource($post);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $post->delete();

        return response()->json(null, 204);
    }

    public function all()
    {
        return view('landing', [
            'posts' => Post::latest()->paginate(10)
        ]);
    }

    public function single(Post $post)
    {
        return view('single', compact('post'));
    }
}
