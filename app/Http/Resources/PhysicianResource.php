<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Hospital;
use App\Speciality;
class PhysicianResource extends JsonResource
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
            'id'            => $this->id,
            'name'          => $this->name,
            'degree'        => $this->degree,
            'date_time'     => $this->date_time,
            'hospital'  => new HospitalResource(Hospital::find($this->hospital_id)),
            'speciality'  => new SpecialityResource(Speciality::find($this->speciality_id))
        ];
    }
}
