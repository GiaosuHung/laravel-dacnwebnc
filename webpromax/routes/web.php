<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// Route::get('/login', function () {

//     return view('/login/login');
// });
Route::get('/admin/login',[LoginController::class,'index']);
Route::post('/admin/login/postlogin',[LoginController::class,'postlogin']);

Route::get('/', function () {
    return view('HomePage');
});
Route::get('/Iphone', function () {
    return view('Iphone');
});
Route::get('/AmThanh', function () {
    return view('AmThanh');
});
Route::get('/IPag', function () {
    return view('IPag');
});
Route::get('/Mac', function () {
    return view('Mac');
});
Route::get('/PhuKien', function () {
    return view('PhuKien');
});
Route::get('/Product', function () {
    return view('Product');
});
Route::get('/Watch', function () {
    return view('Watch');
});
Route::post('/register', function () {
    return view('HomePage');
});

Route::post('/cart/add', 'CartController@addToCart')->name('cart.add');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('/home');

Route::get('/register', [AuthController::class, 'showRegistrationForm'])->name('register');
Route::post('/register', [AuthController::class, 'register']);
