<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Physician;
use App\Hospital;
use App\Speciality;

class PhysicianController extends Controller
   {
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $physicians = Physician::all();
        $hospitals = Hospital::all();
        $specialities = Speciality::all();
        return view('physician.index',compact('physicians','hospitals','specialities'));
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
        // $base_url = "http://mobile.khaingthinkyi.me/";
        // dd($request);
        $request->validate([
            'name'  => 'required',
            'degree' => 'required',
            'speciality'  => 'required',
        ]);
         
 
        $physician = new Physician;
        $physician->name    = request('name');
        $physician->degree   = request('degree');
        $physician->speciality_id = request('speciality'); 
        $physician->save();

        return redirect()->route('physician.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

       $request->validate([
            'edit_name'  => 'required',
            'edit_degree' => 'required',
            'edit_speciality'  => 'required',
        ]);
         
 
        $physician = Physician::find(request('edit_id'));
        $physician->name    = request('edit_name');
        $physician->degree   = request('edit_degree');
        $physician->speciality_id = request('edit_speciality'); 
        $physician->save();

        return redirect()->route('physician.index'); 

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $physician = Physician::find($id);
        $physician->delete();
        return redirect()->route('physician.index');

    }
}

