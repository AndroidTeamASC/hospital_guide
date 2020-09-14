<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\RecommendationAndSuggestion;
use App\Http\Resources\RecommendResource;
use App\Http\Resources\CategoryResource;
use Carbon\Carbon;
class RecommendController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $recommends = RecommendationAndSuggestion::all();
        $recommends = RecommendResource::collection($recommends);
        return response()->json([
            'recommends' => $recommends,
        ],200);;
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
            'subject'  => 'required',
            // 'rec_date' => 'required',
            'person_name'=> 'required',
            'person_mobile_no' => 'required',
            'person_email' => 'required',
            'hospital'  => 'required'
        ]);
        


        
        $recommend = new RecommendationAndSuggestion;
        $recommend->subject         = request('subject');
        $recommend->rec_date            = Carbon::now();;
        $recommend->person_name     = request('person_name');
        $recommend->person_email     = request('person_email');
        $recommend->person_mobile_no = request('person_mobile_no');
        $recommend->hospital_id     = request('hospital');
        $recommend->save();

        return response()->json([
            'success' => "Recommend Sucessfully!",
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
        $recommend = RecommendationAndSuggestion::all();
        $recommend = RecommendResource::make($recommend);
        return response()->json([
            'recommend' => $recommend
        ]);
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
