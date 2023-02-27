<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use App\Service\EventService;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Age;
use App\Models\Like;

class MainListSearchController extends Controller
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
        $ageEvents = $eventService->MyTop3Events()->limit(9)->get();


        $dayEvents = $eventService->DayTop3Events()->limit(3)->get();

        $age_id = $request->input('age_id');
        $request->flash();

        if(!empty($age_id)) {
            $ageEvents = Event::withCount('likes')->where('del_flg', '0')->orderBy('likes_count', 'desc')->orderBy('created_at', 'DESC')->where('age_id',$age_id)->limit(9)->get();
        }
        
        $ages = Age::all();

        return view('newlo.main')
            ->with([
                    'top1Event' => $top1Event,
                    'ageEvents' => $ageEvents,
                    'dayEvents' => $dayEvents,
                    'events' => $events,
                    'myevents' => $myevents,
                    'ages'=> $ages,
                    'like' => $like,
                    ]);
    }
}
