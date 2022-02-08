<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\BranchController;
use App\Http\Controllers\API\MenuTypeController;
use App\Http\Controllers\API\MenuSectionController;
use App\Http\Controllers\API\MenuItemController;
use App\Http\Controllers\API\MenuController;
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


Route::get('/choose', [BranchController::class, 'index']);
Route::get('/start/{branch}', [MenuTypeController::class, 'getType']);
Route::get('/menu-sections/all', [MenuSectionController::class, 'all']);
Route::get('/menu-items/{id}', [MenuItemController::class, 'getById']);
Route::get('/menu-sections/{id}', [MenuSectionController::class, 'getById']);
Route::get('/menu-items/all', [MenuItemController::class, 'all']);
Route::resource('menu-sections', MenuSectionController::class);
Route::resource('menu-types', MenuTypeController::class);
Route::resource('menu-items', MenuItemController::class);
Route::resource('menus', MenuController::class)->except(['index', 'create']);

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::middleware('auth:sanctum')->group(function () {
});

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