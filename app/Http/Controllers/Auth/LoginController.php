<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class LoginController extends Controller
{

    //ログイン後の画面分岐
    public function index()
    {
        $role = Auth::user()->role;
        $checkrole = explode(',', $role);
        if (in_array('admin', $checkrole)) {
            return redirect('newlo/admin/');
        } elseif(in_array('user', $checkrole)) {
            return redirect('/newlo');
        }
    }

    public function redirectToProvider(Request $request) {

        $provider = $request->provider;
        return Socialite::driver($provider)->redirect();

    }

    public function handleProviderCallback(Request $request) {

        $provider = $request->provider;
        $social_user = Socialite::driver($provider)->stateless()->user();
        $social_email = $social_user->getEmail();
        $social_name = $social_user->getName();
        $social_password =  Str::random(10);


        $user = User::where(['email' => $social_email])->first();

        if($user){

            auth()->login($user);
            return redirect('redirects');

        }else{

            $user = User::firstOrCreate([
                'email' => $social_email
            ], [
                'email' => $social_email,
                'name' => $social_name,
                'password' => Hash::make($social_password),
            ]);

            $user_item = [
                'name' => $social_name,
                'pass' => $social_password
            ];

            $user->registered($user_item);

            auth()->login($user);
            return redirect('redirects');

        }

        return '必要な情報が取得できていません。';

    }
}