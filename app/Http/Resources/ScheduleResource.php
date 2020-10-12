<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Hospital;
use App\Speciality;
use App\Physician;
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
            'date_time'   => $this->date_time,
            'hospital' => new HospitalResource(Hospital::find($this->hospital_id)),
            'physician' => new PhysicianResource(Physician::find($this->physician_id))
        ];
    }
}
