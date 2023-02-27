<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

/**
     * 都道府県に紐付く投稿の取得(Postモデルとのリレーション)
     */
    public function event(){
        return $this->hasMany('App\Event');
    }

}
