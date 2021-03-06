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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::Apiresource('/hospital','Api\HospitalController');

Route::Apiresource('/recommend','Api\RecommendController');

Route::Apiresource('/package','Api\PackageController');

Route::Apiresource('/speciality','Api\SpecialityController');

Route::Apiresource('/physician','Api\PhysicianController');

Route::Apiresource('/schedule','Api\ScheduleController');

