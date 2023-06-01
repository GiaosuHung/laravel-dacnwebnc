<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;

class AuthController extends Controller
{
    public function showRegistrationForm()
{
    return view('register');
}

public function register(Request $request)
{


    $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|string|email|unique:users|max:255',
        'password' => 'required|string|min:8|confirmed',
    ]);


    $request->validate([
        'name' => 'required|string|max:255',
        'email' => [
            'required',
            'string',
            'email',
            'max:255',
            Rule::unique('users'), // Kiểm tra trường email có duy nhất trong bảng users
        ],
        'password' => 'required|string|min:8|confirmed',
    ]);
    return $existingUser = User::where('email', $request->email)->first();
    if ($existingUser) {
        Session()->flash('error', 'Email đã được sử dụng, vui lòng chọn email khác.');
        return redirect()->back();
    }

    User::create([
        'name' => $request->name,
        'email' => $request->email,
        'password' => Hash::make($request->password),
    ]);

    return redirect('/')->with('success', 'Registration successful!');
}


}

