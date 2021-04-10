<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\CitiesController;
use App\Http\Controllers\API\BusesController;
use App\Http\Controllers\API\TripsController;
use App\Http\Controllers\API\BookingsController;
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
Route::fallback(function(){
    return response()->json([
        'message' => 'endpoint Not Found. If error persists, contact me'], 404);
});


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

// Adminstration routes

Route::middleware(['auth:api'])->group(function () {
    Route::apiResource('cities', CitiesController::class);
    Route::apiResource('buses', BusesController::class);
    Route::apiResource('trips', TripsController::class);  
});

// user routes
Route::post('/bookings',[BookingsController::class, 'store']);
Route::get('/avilable_seat',[BusesController::class, 'list_seats']);
