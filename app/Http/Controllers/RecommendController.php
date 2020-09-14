<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Hospital;
use App\RecommendationAndSuggestion;
class RecommendController extends Controller
{
	 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hospitals = Hospital::all();
        $recommends = RecommendationAndSuggestion::all();
         return response()->json([
            'recommends' => $recommends,
        ],200);;
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
         
        $request->validate([
            'subject'  => 'required',
            'date' => 'required',
            'person_name'=> 'required',
            'person_mobile_no' => 'required',
            'person_email' => 'required',
            'hospital'  => 'required'
        ]);
        


        
        $recommend = new RecommendationAndSuggestion;
        $recommend->subject    		= request('subject');
        $recommend->date   	  		= request('date');
        $recommend->person_name		= request('person_name');
        $recommend->person_email     = request('person_email');
        $recommend->person_mobile_no = request('person_mobile_no');
        $recommend->hospital_id     = request('hospital');
        $recommend->save();

        return response()->json([
            'success' => "Recommend added!!",
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

        // $request->validate([
        //     'edit_name'  => 'required',
        //     'edit_place' => 'required',
        //     'edit_phone_no' => 'required',
        //     'edit_website_link'  => 'required',
        //     'edit_email'    => 'required',
        //     'edit_facebook_link' => 'required'  
        // ]);
        //  if($request->hasfile('image')){
        //     $image=$request->file('image');
        //     $name=$image->getClientOriginalName();
        //     $image->move(public_path().
        //         '/image/',$name);
        //     $image='/image/'.$name;
        // }else{
        //     $image = request('old_image');
        // }
        // if($request->hasfile('banner')){
        //     $banner=$request->file('banner');
        //     $name=$banner->getClientOriginalName();
        //     $banner->move(public_path().
        //         '/banner/',$name);
        //     $banner='/banner/'.$name;
        // }else
        // {
        //     $banner = request('old_banner');
        // }




        
        // $hospital = Hospital::find(request('edit_id'));
        //    // dd($request);
        // $hospital->hospital_name    = request('edit_name');
        // $hospital->hospital_image   = $image;
        // $hospital->hospital_banner  = $banner;
        // $hospital->place            = request('edit_place');
        // $hospital->phone_no         = request('edit_phone_no');
        // $hospital->website_link     = request('edit_website_link');
        // $hospital->email            = request('edit_email');
        // $hospital->facebook_link    = request('edit_facebook_link');
        // $hospital->save();

        // return redirect()->route('hospital.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // $hospital = Hospital::find($id);
        // $hospital->delete();
        // return redirect()->route('hospital.index');

    }
}
