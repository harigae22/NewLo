<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use App\Http\Requests\Event\TweetRequest;
use App\Service\EventService;

class EventTweetController extends Controller
{

    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(TweetRequest $request, EventService $eventService)
    {
        
        $eventService->saveEvent(
            $request->userId(),
            $request->day(),
            $request->title(),
            $request->content(),
            $request->cost(),
            $request->ageId(),
            $request->prefectureId(),
            $request->categoryId(),
            $request->images(),
        );
        return redirect()->route('newlo.event_list');
    }
}
