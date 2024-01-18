<?php

namespace App\Http\Controllers\Event;

use App\Http\Controllers\Controller;
use App\Models\Age;
use App\Models\Prefecture;
use App\Models\Category;

class TweetController extends Controller
{

    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke()
    {
        $ages = Age::all();
        $prefectures = Prefecture::all();
        $categories = Category::all();
        return view('newlo.tweet')
            ->with([
                    'ages'=> $ages,
                    'prefectures'=> $prefectures,
                    'categories'=> $categories,
                ]);
    }
}
