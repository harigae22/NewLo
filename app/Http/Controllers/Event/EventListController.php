<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use App\Service\EventService;
use Illuminate\Http\Request;
use App\Models\Age;
use App\Models\Prefecture;
use App\Models\Category;
use App\Models\Like;


class EventListController extends Controller
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
        $events = $eventService->getEvents()->paginate(12);
        $ages = Age::all();
        $prefectures = Prefecture::all();
        $categories = Category::all();

        $request->session()->flash('_old_input');
        return view('newlo.list.event')
            ->with([
                    'events' => $events,
                    'ages'=> $ages,
                    'prefectures'=> $prefectures,
                    'categories'=> $categories,
                    'like' => $like,
                    ]);
    }

}
