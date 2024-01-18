<?php

namespace App\Service;

use App\Models\Event;
use App\Models\Image;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;


class EventService
{
    public function getEvents()
    {
        //with で画像を同時にIndexControllerへ渡す
        return Event::withCount('likes')->with('images')->where('del_flg', '0')->orderBy('created_at', 'DESC')->get();
    }

    public function myEvents()
    {
        //with で画像を同時にIndexControllerへ渡す
        return Event::withCount('likes')->with('images')->where('del_flg', '0')->orderBy('created_at', 'DESC');
    }

    public function AgeEvents()
    {
        return Event::withCount('likes')->where('del_flg', '0')->orderBy('likes_count', 'desc')->orderBy('created_at', 'DESC');
    }

    public function MainAgeTop9Events()
    {
        //投稿イベント いいね数TOP3
        return Event::withCount('likes')->where('del_flg', '0')->orderBy('likes_count', 'desc')->orderBy('created_at', 'DESC');
    }

    public function Top1Event()
    {
        //投稿イベント いいね数TOP3
        return Event::withCount('likes')->with('images')->where('del_flg', '0')->orderBy('likes_count', 'desc');
    }

    public function Top3Events()
    {
        //投稿イベント いいね数TOP3
        return Event::withCount('likes')->with('images')->where('del_flg', '0')->orderBy('likes_count', 'desc')->orderBy('created_at', 'DESC');
    }

    public function MyTop3Events()
    {   
        $userId = Auth::user()->id;
        //with で画像を同時にIndexControllerへ渡す
        return Event::withCount('likes')->with('images')->where('del_flg', '0')->where('user_id',$userId)->orderBy('likes_count', 'desc')->orderBy('created_at', 'DESC');
    }

    public function DayTop3Events()
    {
        return Event::withCount('likes')->with('images')->where('del_flg', '0')->orderBy('day', 'DESC')->orderBy('created_at', 'DESC');
    }

    public function likeEvents()
    {
        return \Auth::user()->likeEvents()->withCount('likes')->where('del_flg', '0')->orderBy('created_at', 'DESC');
    }

    //ユーザーの投稿内容かどうかのチェック
    //Controllerコード重複回避のためServiceへ記入
    public function checkOwnEvent(int $userId, int $eventId): bool
    {
        $event = Event::where('id', $eventId)->first();
        if (!$event) {
            return false;
        }

        return $event->user_id === $userId;
    }


    //event内容と画像の登録
    public function saveEvent(int $userId, $day, string $title, $content, $cost, $ageId, $prefectureId, $categoryId,array $images)
    {
        DB::transaction(function () use ($userId, $day, $title, $content, $cost, $ageId, $prefectureId, $categoryId, $images) {
            $event =new Event;
            $event->user_id = $userId;
            $event->day = $day;
            $event->title = $title;
            $event->content = $content;
            $event->cost = $cost;
            $event->age_id = $ageId;
            $event->prefecture_id = $prefectureId;
            $event->category_id = $categoryId;
            $event->save();
            foreach ($images as $image) {
                Storage::putFile('public/images', $image);
                $imageModel = new Image();
                $imageModel->name = $image->hashName();
                $imageModel->save();
                $event->images()->attach($imageModel->id);
            }
        });
    }


}
