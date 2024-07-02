<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Hash;
use Auth;

class AuthController extends Controller
{
    public function login()
    {
        if (!empty(Auth::check()) && Auth::User()->is_admin == 1)  {
            return redirect()->route('admin.dashboard');
        }
        return view('admin.auth.login');
    }

    public function login_proses(Request $request)
    {
        $remember = !empty($request->remember) ? true : false;
        
        $request->validate([
            'email'     => 'required',
            'password'  => 'required',
        ]);

        if (Auth::attempt(['email'=>$request->email, 'password'=> $request->password, 'is_admin'=> 1, 'status'=> 0, 'is_deleted'=> 0], $remember)) {
            return redirect()->route('admin.dashboard');
        } else{
            return redirect()->back()->with('error', "Please enter correct email and password");
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login')->with('success', 'Kamu berhasil logout');
    }
}
