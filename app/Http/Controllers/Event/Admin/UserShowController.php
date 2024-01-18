<?php

namespace App\Http\Controllers\Event\Admin;

use App\Http\Controllers\Controller;
use App\Models\Event;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Age;
use App\Models\Prefecture;
use App\Models\Category;
use App\Models\Like;

class UserShowController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request, Event $event)
    {
        $userId = (int) $request->route('userId');
        $like = new Like;
        $events = Event::withCount('likes')->with('images')->where('user_id', $userId)->orderBy('created_at', 'DESC')->get()->paginate(12);
        $user = User::find($userId);
        $ages = Age::all();
        $prefectures = Prefecture::all();
        $categories = Category::all();

        $request->session()->flash('_old_input');
        return view('newlo.admin.user_show')
            ->with([
                    'user' => $user,
                    'events' => $events,
                    'ages'=> $ages,
                    'prefectures'=> $prefectures,
                    'categories'=> $categories,
                    'like' => $like,
                    ]);
    }

}
