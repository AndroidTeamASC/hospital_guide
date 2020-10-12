<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Physician;
use App\Schedule;
use App\Http\Resources\PhysicianResource;
use App\Http\Resources\ScheduleResource;
use DB;

class PhysicianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //dd($request->keyword);
         if (isset($request->speciality_id) && isset($request->hospital_id)) {
            
            $physicians = DB::table('physicians')
            ->join('specialities', 'specialities.id', '=', 'physicians.speciality_id')
            ->join('schedules', 'schedules.physician_id', '=', 'physicians.id')
            ->select('physicians.*')
            ->where('specialities.id','=',$request->speciality_id)
            ->where('schedules.hospital_id','=', $request->hospital_id)
            ->get();
            
        }else if (isset($request->speciality_id)) {
            
            $physicians = Physician::where('speciality_id','=', $request->speciality_id)->get();
        }else if (isset($request->keyword)) {
            
            $physicians = Physician::where('name','LIKE',"%$request->keyword%")->get();
        }
        else {
            $physicians = Physician::all();
        }
        
        $physicians = PhysicianResource::collection($physicians);
        return response()->json([
            'physicians' => $physicians
        ],200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $schedule = Schedule::where('physician_id',$id)->get();

        $schedule = ScheduleResource::collection($schedule);
        return response()->json([
            'physician_schedule' => $schedule
        ],200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
