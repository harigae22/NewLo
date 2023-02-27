<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Service\EventService;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;

class DeleteController extends Controller
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
        if (!$eventService->checkOwnEvent($request->user()->id, $eventId)) {
            throw new AccessDeniedHttpException(); //AccessDeniedHttpException: アクションを行う権限があるか確認
        }

        $event = Event::where('id', $eventId)->firstOrFail();
        $event->del_flg = 1;
        $event->save();
        return redirect()
            ->route('newlo.main')
            ->with('feedback.success', "削除しました。");
    }
}
 