<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\PostResource;

class PostResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id'        => $this->id,
            'judul'     => $this->judul,
            'konten'    => $this->konten,
            'image'     => $this->image,
            'created_at'=> (string) $this->created_at,
            'updated_at'=> (string) $this->updated_at,
        ];
    }
}
