<?php

namespace App\Http\Controllers\Event\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        $users = User::get()->paginate(12);
        return view('newlo.admin.list_user')
            ->with([
                    'users' => $users
                    ]);
    }

}
