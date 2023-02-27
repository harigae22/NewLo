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

        $top1Event = $eventService->Top1Event()->first();

        $events = $eventService->Top3Events()->limit(3)->get();
        
        // MyEventTop3
        $myevents = $eventService->MyTop3Events()->limit(3)->get();

        // AgeTopEventTop9
        $ageEvents = $eventService->AgeEvents()->limit(9)->get();

        // DayTop3 初期-
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
