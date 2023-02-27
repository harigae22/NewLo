<?php

namespace App\Http\Controllers\Event\Update;

use App\Http\Controllers\Controller;
use App\Http\Requests\Event\UpdateRequest;
use App\Models\Event;
use App\Service\EventService;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;

class PutController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(UpdateRequest $request, EventService $eventService)
    {
        if (!$eventService->checkOwnEvent($request->user()->id, $request->id())) {
            throw new AccessDeniedHttpException();
        }

        $event = Event::where('id', $request->id())->first();
        $event->day = $request->day();
        $event->title = $request->title();
        $event->content = $request->content();
        $event->cost = $request->cost();
        $event->age_id = $request->ageId();
        $event->category_id = $request->categoryId();
        $event->prefecture_id = $request->prefectureId();
        $event->save();
        return redirect()
            ->route('newlo.update.index', ['eventId' => $event->id])
            ->with('feedback.success', "編集しました。");
        
    }
}
