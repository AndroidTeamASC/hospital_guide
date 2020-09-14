<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hospital extends Model
{
	protected $fillable = ['hospital_name','hospital_image','hospital_banner','place','website_link','phone_no','email','facebook_link'];

}
