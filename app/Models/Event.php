<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    protected $table = 'event';


    //EventモデルからUserに関連付け
    public function user()
    {
        return $this->belongsTo(User::class);
    }
 
    public function likes() {
        return $this->hasMany(Like::class);
    }


    //EventモデルからUserに関連付け
    public function images()
    {
        return $this->belongsToMany(Image::class, 'event_images')
        ->using(EventImage::class);
    }
    

    public function prefecture(){
        return $this->belongsTo(Prefecture::class);
    }

    public function age(){
        return $this->belongsTo(Age::class);
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }

    

}
