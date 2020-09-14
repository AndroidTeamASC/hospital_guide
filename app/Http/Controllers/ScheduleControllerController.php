<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Scheldule;
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
        echo
        $schedules = Scheldule::all();
        dd($schedules);
        $physicians = Physician::all();
        $hospitals = Hospital::all();
        return view('schedule.index',compact('physicians','hospitals','schedules'));
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ScheduleController  $scheduleController
     * @return \Illuminate\Http\Response
     */
    public function show(ScheduleController $scheduleController)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ScheduleController  $scheduleController
     * @return \Illuminate\Http\Response
     */
    public function edit(ScheduleController $scheduleController)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ScheduleController  $scheduleController
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ScheduleController $scheduleController)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ScheduleController  $scheduleController
     * @return \Illuminate\Http\Response
     */
    public function destroy(ScheduleController $scheduleController)
    {
        //
    }
}
