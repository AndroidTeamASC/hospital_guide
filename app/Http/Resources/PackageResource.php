<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Hospital;
class PackageResource extends JsonResource
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
            'package_id'   => $this->id, 
            'package_name' => $this->package_name,
            'package_image'=> $this->package_image,
            'package_description' => $this->package_description,
            'regular_price' => $this->package_price,
            'special_price' => $this->special_price,
            'hospital'  => new HospitalResource(Hospital::find($this->hospital_id))];
       
    }
}
