<?php

namespace App\Models\Tyre;

use Illuminate\Database\Eloquent\Model;

class TyreAssignment extends Model
{
    protected $table = "tyre_assignment";

      protected $guarded = ['id','_token'];

        public function truck()
    {
        return $this->belongsTo('App\Models\Truck', 'truck_id');
    }


}
