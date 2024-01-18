<?php

namespace App\Http\Controllers\Event\Admin\Update;

use App\Http\Controllers\Controller;
use App\Models\Event;
use App\Service\EventService;
use Illuminate\Http\Request;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;
use App\Models\Age;
use App\Models\Prefecture;
use App\Models\Category;


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
        $eventId = (int) $request->route('eventId');

        $event = Event::where('id', $eventId)->firstOrFail();
        $ages = Age::all();
        $prefectures = Prefecture::all();
        $categories = Category::all();
        return view('newlo.admin.update')
                    ->with([
                        'event'=> $event,
                        'ages'=> $ages,
                        'prefectures'=> $prefectures,
                        'categories'=> $categories,
                    ]);
    }
}
