<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Hospital;
class SpecialityResource extends JsonResource
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
            'speciality_id'     => $this->id,
            'speciality_ename'  => $this->speciality_ename,
            'speciality_mname'  => $this->speciality_mname,
            'speciality_image'  => $this->speciality_image
         ];
    }
}
