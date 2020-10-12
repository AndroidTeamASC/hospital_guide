<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Speciality;
use App\Hospital;

class SpecialityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $specialities = Speciality::all();
        $hospitals = Hospital::all();
        return view('speciality.index',compact('specialities','hospitals'));
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
            'mname'  => 'required',
            'image' => 'required',
            'ename' => 'required',
        ]);
         if($request->hasfile('image')){
            $image=$request->file('image');
            $name=time().'.'.$image->getClientOriginalName();
            $image->move(public_path().
                '/image/',$name);
            $image='/image/'.$name;
        }
       


        
        $speciality = new speciality;
        $speciality->speciality_ename    = request('ename');
        $speciality->speciality_image   = $image;
        $speciality->speciality_mname   = request('mname');
        $speciality->save();

        return redirect()->route('speciality.index');
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
            'edit_mname'  => 'required',
            'edit_ename' => 'required',
        ]);
         if($request->hasfile('image')){
            $image=$request->file('image');
            $name=$image->getClientOriginalName();
            $image->move(public_path().
                '/image/',$name);
            $image='/image/'.$name;
        }else{
        	$image = request('old_image');
        }
       


        
        $speciality = Speciality::find(request('edit_id'));
        $speciality->speciality_mname    	  = request('edit_mname');
        $speciality->speciality_image   	  = $image;
        $speciality->speciality_ename     = request('edit_ename');
        $speciality->hospital_id    = request('edit_hospital');
        $speciality->save();

        return redirect()->route('speciality.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $speciality = Speciality::find($id);
        $speciality->delete();
        return redirect()->route('speciality.index');

    }
}

