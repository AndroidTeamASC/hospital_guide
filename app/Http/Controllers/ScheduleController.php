<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Schedule;
use App\Hospital;
use App\Physician;
class ScheduleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];

        $schedules = Schedule::all();
        $physicians = Physician::all();
        $hospitals = Hospital::all();
        return view('schedule.index',compact('physicians','hospitals','schedules','days'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'date_time'     => 'required',
            'hospital'  => 'required',
            'physician' => 'required'
        ]);

        $schedule = new Schedule;
        $schedule->date_time = request('date_time');
        $schedule->hospital_id  = request('hospital');
        $schedule->physician_id = request('physician');
        $schedule->save();

        return redirect()->route('schedule.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ScheduleController  $scheduleController
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ScheduleController  $scheduleController
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ScheduleController  $scheduleController
     * @return \Illuminate\Http\Respons
     */
    public function update(Request $request, $id)
    {
          $request->validate([
            'edit_date_time'     => 'required',
            'hospital'  => 'required',
            'physician' => 'required'
        ]);

        $schedule = Schedule::find(request('edit_id'));
        $schedule->date_time = request('edit_date_time');
        $schedule->hospital_id  = request('hospital');
        $schedule->physician_id = request('physician');
        $schedule->save();

        return redirect()->route('schedule.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ScheduleController  $scheduleController
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $schedule = Schedule::find($id);
        $schedule->delete();
                return redirect()->route('schedule.index');

    }
}
