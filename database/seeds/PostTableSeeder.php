<?php

use App\Post;
use Illuminate\Database\Seeder;

class PostTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $post           = new Post;
        $post->user_id  = 2;
        $post->judul    = "Contoh Judul";
        $post->konten   = "Contoh Konten Bosque 
                           Contoh Konten Bosque
                           Contoh Konten Bosque 
                           Contoh Konten Bosque 
                           Contoh Konten Bosque 
                           Contoh Konten Bosque 
                           Contoh Konten Bosque 
                           Contoh Konten Bosque 
                           Contoh Konten Bosque 
                           Contoh Konten Bosque 
                           Contoh Konten Bosque ";
        $post->save();
    }
}
