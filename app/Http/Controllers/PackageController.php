<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Package;
use App\Hospital;

class PackageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $packages = Package::all();
        $hospitals = Hospital::all();
        return view('package.index',compact('packages','hospitals'));
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
            'image' => 'required',
            'description' => 'required',
            'hospital'    => 'required', 
        ]);
         if($request->hasfile('image')){
            $image=$request->file('image');
            $name=time().'.'.$image->getClientOriginalName();
            $image->move(public_path().
                '/image/',$name);
            $image='/image/'.$name;
        }
       


        
        $package = new package;
        $package->package_name    = request('name');
        $package->package_image   = $image;
        $package->package_price   = request('rprice');
        $package->special_price   = request('sprice');
        $package->package_description         = request('description');
        
        $package->hospital_id    = request('hospital');
        $package->save();

        return redirect()->route('package.index');
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
            'edit_description' => 'required',
            'edit_hospital'    => 'required', 
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
       


        
        $package = Package::find(request('edit_id'));
        $package->package_name    	  = request('edit_name');
        $package->package_image   	  = $image;
        $package->package_price       = request('edit_rprice');
        $package->special_price       = request('edit_sprice');
        $package->package_description = request('edit_description');
        $package->hospital_id    = request('edit_hospital');
        $package->save();

        return redirect()->route('package.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $package = Package::find($id);
        $package->delete();
        return redirect()->route('package.index');

    }
}
