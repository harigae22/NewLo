<?php

namespace App\Http\Controllers\Event\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Event;

class DeleteController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {

        $eventId = (int) $request->route('eventId');
        $event = Event::where('id', $eventId)->firstOrFail();
        $event->del_flg = 0;
        $event->save();
        return redirect()
            ->route('admin')
            ->with('feedback.success', "削除しました。");
    }
}
 