<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Physician extends Model
{
	
    protected $fillable = ['name','degree','speciality_id'];
    public function hospital($value='')
    {
    	return $this->belongsTo('App\Hospital');
    } 

    public function speciality($value='')
    {
    	return $this->belongsTo('App\Speciality');
    } 
}
