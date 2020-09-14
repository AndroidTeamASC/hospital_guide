<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Hospital;
use App\Speciality;
class ScheduleResource extends JsonResource
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
            'id'    => $this->id,
            'day'   => $this->s_day,
            'time'  => $this->s_time,
            'hospital' => new HospitalResource(Hospital::find($this->hospital_id)),
            'speciality' => new SpecialityResource(Speciality::find($this->speciality_id))
        ];
    }
}
