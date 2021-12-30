<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


// use App\Http\Controllers\API\BookController;
// use App\Http\Controllers\API\UserController;

// Route::post('login', [UserController::class, 'login']);
// Route::post('register', [UserController::class, 'register']);
// Route::post('logout', [UserController::class, 'logout'])->middleware('auth:sanctum');

// Route::group(['prefix' => 'books', 'middleware' => 'auth:sanctum'], function () {
//     Route::get('/', [BookController::class, 'index']);
//     Route::post('add', [BookController::class, 'add']);
//     Route::get('edit/{id}', [BookController::class, 'edit']);
//     Route::post('update/{id}', [BookController::class, 'update']);
//     Route::delete('delete/{id}', [BookController::class, 'delete']);
// });

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// export const routes = [
//     {
//         name: 'home',
//         path: '/',
//         component: Home
//     },
//     {
//         name: 'about',
//         path: '/about',
//         component: About
//     },
//     {
//         name: 'register',
//         path: '/register',
//         component: Register
//     },
//     {
//         name: 'login',
//         path: '/login',
//         component: Login
//     },
//     {
//         name: 'dashboard',
//         path: '/dashboard',
//         component: Dashboard
//     },
//     {
//         name: 'books',
//         path: '/books',
//         component: Books
//     },
//     {
//         name: 'addbook',
//         path: '/books/add',
//         component: AddBook
//     },
//     {
//         name: 'editbook',
//         path: '/books/edit/:id',
//         component: EditBook
//     },
// ];