<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use App\Service\EventService;
use Illuminate\Http\Request;
use App\Models\Age;
use App\Models\Prefecture;
use App\Models\Category;
use App\Models\Like;
use App\Models\Event;

class IndexController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request, EventService $eventService)
    {
        $like = new Like;

        // 全世代上位Top1
        $top1Event = $eventService->Top1Event()->first();

        // 世代別上位Top9
        $ageEvents = $eventService->AgeEvents()->limit(9)->get();

        // 全世代上位Top3
        $events = $eventService->Top3Events()->limit(3)->get();

        // ユーザー投稿Top3
        $myevents = $eventService->MyTop3Events()->limit(3)->get();

        // 最新順3件
        $dayEvents = $eventService->DayTop3Events()->limit(3)->get();

        
        $ages = Age::all();
        $prefectures = Prefecture::all();
        $categories = Category::all();

        $request->session()->flash('_old_input');
        return view('newlo.main')
            ->with([
                    'top1Event' => $top1Event,
                    'events' => $events,
                    'myevents' => $myevents,
                    'ageEvents' => $ageEvents,
                    'dayEvents' => $dayEvents,
                    'ages'=> $ages,
                    'prefectures'=> $prefectures,
                    'categories'=> $categories,
                    'like' => $like,
                    ]);
    }

}
