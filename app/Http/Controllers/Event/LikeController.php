<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Like;
use Illuminate\Support\Facades\Auth;

class LikeController extends Controller
{
    //メインページ詳細画面
    public function main_show_like(Request $request)
    {
        $id = Auth::user()->id;
        $event_id = $request->event_id;
        $like = new Like();
        $eventId = (int) $request->route('eventId');

        if (Like::where('user_id', $id)->where('event_id', $event_id)->exists()) {
            //likesテーブルのレコードを削除
            $like = Like::where('event_id', $event_id)->where('user_id', $id)->delete();
        } else {
            //空（まだ「いいね」していない）ならlikesテーブルに新しいレコードを作成する
            $like=new Like();
            $like->event_id = $event_id;
            $like->user_id = Auth::user()->id;
            $like->save();
        }

        return redirect()->route('newlo.show', ['eventId' => $event_id]);
    }

    //Eventページ詳細画面
    public function event_show_like(Request $request)
    {
        $id = Auth::user()->id;
        $event_id = $request->event_id;
        $like = new Like();
        $eventId = (int) $request->route('eventId');

        if (Like::where('user_id', $id)->where('event_id', $event_id)->exists()) {
            //likesテーブルのレコードを削除
            $like = Like::where('event_id', $event_id)->where('user_id', $id)->delete();
        } else {
            //空（まだ「いいね」していない）ならlikesテーブルに新しいレコードを作成する
            $like=new Like();
            $like->event_id = $event_id;
            $like->user_id = Auth::user()->id;
            $like->save();
        }

        return redirect()->route('newlo.event_show', ['eventId' => $event_id]);
    }

    //Likeページ詳細画面
    public function like_show_like(Request $request)
    {
        $id = Auth::user()->id;
        $event_id = $request->event_id;
        $like = new Like();

        if (Like::where('user_id', $id)->where('event_id', $event_id)->exists()) {
            //likesテーブルのレコードを削除
            $like = Like::where('event_id', $event_id)->where('user_id', $id)->delete();
        } else {
            //空（まだ「いいね」していない）ならlikesテーブルに新しいレコードを作成する
            $like=new Like();
            $like->event_id=$event_id;
            $like->user_id=Auth::user()->id;
            $like->save();
        }

        return redirect()->route('newlo.like_show', ['eventId' => $event_id]);
    }

}