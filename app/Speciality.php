<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Speciality extends Model
{
    protected $fillable = ['speciality_ename','speciality_mname','speciality_image','hospital_id'];
    public function hospital($value='')
    {
    	return $this->belongsTo('App\Hospital');
    } 
}
