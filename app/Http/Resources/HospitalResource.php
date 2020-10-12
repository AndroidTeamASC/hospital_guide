<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class HospitalResource extends JsonResource
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
           'hospital_id'    => $this->id,
           'hospital_name'  => $this->hospital_name,
           'hospital_image' => $this->hospital_image,
           'hospital_banner'=> $this->hospital_banner,
           'place'          => $this->place,
           'website_link'   => $this->website_link,
           'phone_no'       => $this->phone_no,
           'email'          => $this->email,
           'facebook_link'  => $this->facebook_link,
           'specialities' =>  SpecialityResource::collection($this->specialities)
           
       ];
    }
}
