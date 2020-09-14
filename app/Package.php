<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    protected $fillable = ['package_name','package_image','package_description','package_price','special_price','hospital_id'];

	public function hospital($value='')
    {
    	return $this->belongsTo('App\Hospital');
    }    
}
