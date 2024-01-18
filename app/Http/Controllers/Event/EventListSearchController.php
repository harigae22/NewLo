<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use App\Service\EventService;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Age;
use App\Models\Prefecture;
use App\Models\Category;
use App\Models\Like;

class EventListSearchController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request, EventService $eventService)
    {
        $search = $request->input('search');
        $age_id = $request->input('age_id');
        $prefecture_id = $request->input('prefecture_id');
        $category_id = $request->input('category_id');
        $request->flash();

        $like = new Like;
        $ages = Age::all();
        $prefectures = Prefecture::all();
        $categories = Category::all();
        $events = $eventService->getEvents()->paginate(12);


        $event_all = Event::withCount('likes')->with('images')->where('del_flg', '0')->orderBy('likes_count', 'desc');

        if (($search ==! null)) {
            $events = $event_all->where('title', 'LIKE', "%{$search}%")->orwhere('content', 'LIKE', "%{$search}%")->where('del_flg', '0')->get()->paginate(12);
        }


        if(!empty($age_id)) {
            $events = Event::withCount('likes')->where('age_id',$age_id)->where('del_flg', '0')->orderBy('created_at', 'DESC')->get()->paginate(12);
        }


        if(!empty($prefecture_id)) {
            $events = Event::withCount('likes')->where('prefecture_id', $prefecture_id)->where('del_flg', '0')->orderBy('created_at', 'DESC')->get()->paginate(12);
        }

        if(!empty($category_id)) {
            $events = Event::withCount('likes')->where('category_id', $category_id)->where('del_flg', '0')->orderBy('created_at', 'DESC')->get()->paginate(12);
        }


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
