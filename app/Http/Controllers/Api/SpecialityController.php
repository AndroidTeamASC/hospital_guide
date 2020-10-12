<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Speciality;
use App\Http\Resources\SpecialityResource;
class SpecialityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (isset($request->keyword)) {
            $specialities = Speciality::where('speciality_ename','LIKE',"%$request->keyword%")->orWhere('speciality_mname','LIKE',"%$request->keyword%")->get();
        }else {
            
            $specialities = Speciality::all();
        }
        $specialities =  SpecialityResource::collection($specialities);
        return response()->json([
            'specialities' => $specialities
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
         $request->validate([
            'mname'  => 'required',
            'image' => 'required',
            'ename' => 'required',
            'hospital'    => 'required', 
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
        $speciality->hospital_id    = request('hospital');
        $speciality->save();

        return response()->json([
            'message' => "Speciality is Successfully Added!!"
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $speciality = Speciality::find($id);
        $speciality = SpecialityResource::make($speciality);
        return response()->json([
            'speciality' => $speciality
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
