<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    protected $fillable = ['s_day','s_time','hospital_id','physician_id'];

     public function hospital($value='')
    {
    	return $this->belongsTo('App\Hospital');
    } 

    public function physician($value='')
    {
    	return $this->belongsTo('App\Physician');
    } 
}
