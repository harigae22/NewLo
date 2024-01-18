<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use App\Models\Event;
use App\Service\EventService;
use Illuminate\Http\Request;
use App\Models\Age;
use App\Models\Prefecture;
use App\Models\Category;
use App\Models\Like;

class MyEventShowController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request, EventService $eventService, Event $event)
    {
        $eventId = (int) $request->route('eventId');
        $like = new Like;
        $request->flash();
        
        $event = Event::withCount('likes')->where('id', $eventId)->first();
        // 各カラムデータ取得
        $ages = Age::all();
        $prefectures = Prefecture::all();
        $categories = Category::all();
        return view('newlo.my_show')
                ->with([
                    'event'=> $event,
                    'ages'=> $ages,
                    'prefectures'=> $prefectures,
                    'categories'=> $categories,
                    'like' => $like,
                ]);
    }

}
