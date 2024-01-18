<?php

namespace App\Http\Controllers\Event\Admin;

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
        $events = Event::withCount('likes')->with('images')->where('del_flg', '1')->orderBy('created_at', 'DESC')->get()->paginate(12);
        $ages = Age::all();
        $prefectures = Prefecture::all();
        $categories = Category::all();

        $request->session()->flash('_old_input');
        return view('newlo.admin.main')
            ->with([
                    'events' => $events,
                    'ages'=> $ages,
                    'prefectures'=> $prefectures,
                    'categories'=> $categories,
                    'like' => $like,
                    ]);
    }

}
