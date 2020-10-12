<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Hospital;
class RecommendResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'recommend_id'  => $this->id,
            'subject'       => $this->subject,
            'rec_date'      => $this->rec_date,
            'person_name'   => $this->person_name,
            'person_mobile_no' => $this->person_mobile_no,
            'person_email' => $this->person_email,   
            'hospital'  => new HospitalResource(Hospital::find($this->hospital_id))];
    }
}
