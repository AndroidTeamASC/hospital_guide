<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Hospital;
use App\Http\Resources\HospitalResource;
class HospitalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (isset($request->keyword)) {
            $hospitals = Hospital::where('hospital_name','LIKE',"%$request->keyword%")->orWhere('place','LIKE',"%$request->keyword%")->get();
        }else {
            $hospitals = Hospital::all();
        }

        $hospital =  HospitalResource::collection($hospitals);
        return response([
            'hospitals' => $hospital
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
            'name'  => 'required',
            'image' => 'required',
            'banner'=> 'required',
            'place' => 'required',
            'phone_no' => 'required',
            'website_link'  => 'required',
            'email'    => 'required',
            'facebook_link' => 'required'  
        ]);
         if($request->hasfile('image')){
            $image=$request->file('image');
            $name=time().'.'.$image->getClientOriginalName();
            $image->move(public_path().
                '/image/',$name);
            $image='/image/'.$name;
        }
        if($request->hasfile('banner')){
            $banner=$request->file('banner');
            $name=$banner->getClientOriginalName();
            $banner->move(public_path().
                '/banner/',$name);
            $banner='/banner/'.$name;
        }


        
        $hospital = new Hospital;
        $hospital->hospital_name    = request('name');
        $hospital->hospital_image   = $image;
        $hospital->hospital_banner  = $banner;
        $hospital->place            = request('place');
        $hospital->phone_no         = request('phone_no');
        $hospital->website_link     = request('website_link');
        $hospital->email            = request('email');
        $hospital->facebook_link    = request('facebook_link');
        $hospital->save();

        return response()->json([
            'message' => "Hospital Sucessfully Added!!"
        ],200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
         
         $hospital = Hospital::find($id);
        $hospital =  HospitalResource::make($hospital);
        return response([
            'hospital' => $hospital
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
        $request->validate([
            'edit_name'  => 'required',
            'edit_place' => 'required',
            'edit_phone_no' => 'required',
            'edit_website_link'  => 'required',
            'edit_email'    => 'required',
            'edit_facebook_link' => 'required'  
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
        if($request->hasfile('banner')){
            $banner=$request->file('banner');
            $name=$banner->getClientOriginalName();
            $banner->move(public_path().
                '/banner/',$name);
            $banner='/banner/'.$name;
        }else
        {
            $banner = request('old_banner');
        }




        
        $hospital = Hospital::find(request('edit_id'));
           // dd($request);
        $hospital->hospital_name    = request('edit_name');
        $hospital->hospital_image   = $image;
        $hospital->hospital_banner  = $banner;
        $hospital->place            = request('edit_place');
        $hospital->phone_no         = request('edit_phone_no');
        $hospital->website_link     = request('edit_website_link');
        $hospital->email            = request('edit_email');
        $hospital->facebook_link    = request('edit_facebook_link');
        $hospital->save();

        return response()->json([
            'message' => "Hospital Sucessfully Update!!"
        ],200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $hospital = Hospital::find($id);
        $hospital->delete();
       return response()->json([
            'success' => "Hospital Deleted Successful"
        ],200);
    }
}
