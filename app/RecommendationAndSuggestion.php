<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecommendationAndSuggestion extends Model
{
    protected $fillable = ['subject','rec_date','person_name','person_mobile_no','person_email','hospital_id'];
}
