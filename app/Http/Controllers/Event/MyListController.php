<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Service\EventService;
use Illuminate\Http\Request;
use App\Models\Like;


class MyListController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request, EventService $eventService) 
    {
        $userId = Auth::user()->id;
        $userName = Auth::user()->name;
        $like = new Like;
        $events = $eventService->myEvents()->where('user_id',$userId)->paginate(12);

        return view('newlo.list.my_event')
            ->with([
                    'userName' => $userName,
                    'events' => $events,
                    'like' => $like,
                    ]);
    }

}
